<nav class="menu">
	{% for menu_name, menu_content in theme.menu %}
		<div class='menu-item'>
			
				{% if menu_content.icon %}
					<div class='menu-icon'>
					<a href="{{ menu_content.link }}">
					<img src="{{ '/images/' + menu_content.icon }}" alt="">
					</a>
					</div>
				{% endif %}
				<div class="menu-name">
				<a class='menu-link' href="{{ menu_content.link }}">
					<span>{{ menu_name }}</span>
				</a>
				</div>
			</a>
		</div>
	{% endfor %}
</nav>
