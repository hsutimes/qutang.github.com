<div class="col">
	<div class='Card-archive'>
		<div class="Card-body">
			<a href="{{ url_for(item.path) }}" rel="noopener noreferrer" target="_blank">
				<p class='Card-title'>
					<a href="{{ item.external_link | default(url_for(item.path)) }}" rel="noopener noreferrer" target="_blank">{{ titlecase(item.title) }}</a>
				</p>
				<small class="Card-meta">
					{{ item.date.format(config.date_format) }}
				</small>
			</a>
		</div>
	</div>
</div>