<script> import Bar from "./Bar.svelte"; </script>

<main>
	<h1>My Workout</h1>
	<Bar />
</main>

<style>

	main {
		text-align: center;
		padding: 1em;
		max-width: 240px;
		margin: 0 auto;
	}

	h1 {
		color: #ff3e00;
		text-transform: uppercase;
		font-size: 4em;
		font-weight: 100;
		text-shadow: black 0.1em 0.1em 0.2em;
	}

	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>