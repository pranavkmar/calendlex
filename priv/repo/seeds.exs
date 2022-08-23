alias Calendlex.{Event, EventType, Repo}

Repo.delete_all(Event)
Repo.delete_all(EventType)

event_types = [
  %{
    name: "15 minute meeting",
    description: "Short meeting call.",
    duration: 25,
    color: "blue"
  },
  %{
    name: "30 minute meeting",
    description: "Extended meeting call.",
    duration: 45,
    color: "pink"
  },
  %{
    name: "Pair programming session",
    description: "One hour of pure pair programming fun!",
    duration: 60,
    color: "purple"
  }
]

for event_type <- event_types do
  event_type
  |> EventType.changeset()
  |> Repo.insert!()
end
