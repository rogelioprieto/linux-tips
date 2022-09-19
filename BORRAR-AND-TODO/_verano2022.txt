---
layout: page
title: Verano 2022
permalink: /verano2022/
---


<ul>
{% for cat in site.category-list %}
    <li>
    {{ cat }}
        <ul>
    {% for page in site.pages %}
            {% for pc in page.categories %}
                {% if pc == cat %}
                <li><a href="{{ page.url }}">{{ page.title }}</a></li>
                {% endif %}
            {% endfor %}
    {% endfor %} <!-- page -->
    </ul>
    </li>
{% endfor %}  <!-- cat -->
  </ul>