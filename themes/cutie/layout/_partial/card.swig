<div class="col">
	<div class='Card'>
		{% if item.categories && item.categories.length %}
			{% for cat in item.categories %}
				{% if loop.first %}
					{% set category_link = url_for(cat.path) %}
					{% set category_name = cat.name %}
				{% endif %}
			{% endfor %}
		{% else %}
			{% set category_link = url_for(item.path) %}
			{% set category_name = "uncategorized" %}
		{% endif %}
		
		<div class='Card-figure'>
			<a href="{{ item.external_link | default(url_for(item.path)) }}" rel="noopener noreferrer" target="_blank">
				<img src="{{ '/images/' + category_name + '.svg' }}" alt="">
			</a>
		</div>
		<div class="Card-body">
			
				<div class='Card-excerpt'>
					
					<p><a href="{{ item.external_link | default(url_for(item.path)) }}" rel="noopener noreferrer" target="_blank">{{ strip_html(truncate(item.content, {length: 180, separator: ' ', omission: '...'}))|default("No content") }} </a></p>
					<p>{{ partial('_partial/article-tags', {item: item}) }}</p>
				</div>
			
				<div class='Card-title'>
					<h2><a href="{{ url_for(item.path) }}" rel="noopener noreferrer" target="_blank">{{ titlecase(item.title) }}</a></h2>
					<p>{{ partial('_partial/article-tags', {item: item}) }}</p>
				</div>
				
				<div class="Card-meta">
					<p>{{ item.date.format(config.date_format) }}</p>
				</div>
			</a>
		</div>
	</div>
</div>