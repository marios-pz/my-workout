<script>
    import { each } from "svelte/internal";
    import Point from "./Point.svelte";

    let days = [
        { "name": "Monday", "id": 1},
        { "name": "Tuesday", "id": 2},
        { "name": "Wednesay", "id": 3},
        { "name": "Thursday", "id": 4},
        { "name": "Friday", "id": 5},
        { "name": "Saturday", "id": 6},
        { "name": "Sunday", "id": 7},
    ];

    let data = [];
    let day_status = [];

	const GetPlan = (index) => {

        day_status = [days[index - 1].name];

		fetch('http://0.0.0.0:8080/api/workout/' + index)
        .then(response => response.json())
        .then(data => {
            data = data['exercises'];

            if(data == undefined) {
                data = "Break";
            }

            console.log(data);
        })
        .catch(err => {
            console.log(err);
            return [];
        })

	}
    
</script>

<main>
    <button class="button" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false"> 
        Choose day <Point /> 
    </button>

    <ul
        class="
        dropdown-menu
        min-w-max
        absolute
        hidden
        bg-white
        text-base
        z-50
        float-left
        py-2
        list-none
        text-left
        rounded-lg
        shadow-lg
        mt-1
        hidden
        m-0
        bg-clip-padding
        border-none
        "
        aria-labelledby="dropdownMenuButton1"
    >

        {#each days as day (day.id)}
            <a class="list_button" href="#" on:click="{ () => GetPlan(day.id) }">{ day.name }</a>
        {/each}
    </ul>

    <p>Weekly workout plan</p>
    
    <p> {data} </p>

</main>

<style>
    p, h1 { color:white; }

    h1 {
        margin-top: 1em;
        font-size: 3em;
    }

    p {
        margin-top: 2em;
        color: #ff3e00;
		text-transform: uppercase;
        font-weight: 100;
        font-size: 3em;
    }


</style>