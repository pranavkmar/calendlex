alias Calendlex.{Event, EventType, Repo}

Repo.delete_all(Event)
Repo.delete_all(EventType)

event_types = [

   %{
    name: "Video Interview",
    description: "One hour of candidate Interview",
    duration: 60,
    color: "purple"
  }
]

for event_type <- event_types do
  event_type
  |> EventType.changeset()
  |> Repo.insert!()
end
