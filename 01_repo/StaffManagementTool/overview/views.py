from django.shortcuts import render

# Create your views here.
def overview_view(request):
    return render(request, 'overview.html')