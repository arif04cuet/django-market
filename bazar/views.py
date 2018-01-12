from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from django.contrib import messages
from django.utils.translation import ugettext_lazy as _
from django.views import generic as generic_view

from . import forms
from . import models
# Create your views here.


class addEntry(generic_view.CreateView):
    model = models.Entry
    template_name = 'add.html'
    form_class = forms.EntryForm
    object = None

    def get(self, request, *args, **kwargs):
        """
        Handles GET requests and instantiates blank versions of the form
        and its inline formsets.
        """
        self.object = None
        form_class = self.get_form_class()
        form = self.get_form(form_class)
        product_form = forms.EntryProductFormset()
        return self.render_to_response(
            self.get_context_data(form=form,
                                  product_form=product_form,
                                  )
        )

    def post(self, request, *args, **kwargs):
        """
        Handles POST requests, instantiating a form instance and its inline
        formsets with the passed POST variables and then checking them for
        validity.
        """
        self.object = None
        form_class = self.get_form_class()
        form = self.get_form(form_class)
        product_form = forms.EntryProductFormset(self.request.POST)
        if form.is_valid() and product_form.is_valid():
            return self.form_valid(form, product_form)
        else:
            return self.form_invalid(form, product_form)

    def form_valid(self, form, product_form):
        """
        Called if all forms are valid. Creates Assignment instance along with the
        associated AssignmentQuestion instances then redirects to success url
        Args:
            form: Assignment Form
            assignment_question_form: Assignment Question Form

        Returns: an HttpResponse to success url

        """
        self.object = form.save(commit=False)
        # pre-processing for Assignment instance here...
        self.object.save()

        # saving AssignmentQuestion Instances
        products = product_form.save(commit=False)
        for aq in products:
            #  change the AssignmentQuestion instance values here
            #  aq.some_field = some_value
            aq.save()

        # return HttpResponseRedirect(self.get_success_url())

    def form_invalid(self, form, product_form):
        """
        Called if a form is invalid. Re-renders the context data with the
        data-filled forms and errors.

        Args:
            form: Assignment Form
            assignment_question_form: Assignment Question Form
        """
        return self.render_to_response(
            self.get_context_data(form=form,
                                  product_form=product_form
                                  )
        )
