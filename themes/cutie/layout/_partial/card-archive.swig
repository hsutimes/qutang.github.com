<div class="col">
	<div class='Card-archive'>
		<div class="Card-body">
			<a href="{{ url_for(item.path) }}">
				<p class='Card-title'>
					<a href="{{ item.external_link | default(url_for(item.path)) }}">{{ titlecase(item.title) }}</a>
				</p>
				<small class="Card-meta">
					{{ item.date.format(config.date_format) }}
				</small>
			</a>
		</div>
	</div>
</div>