--@ BeginProperty
--@ SyncDirection=All
number sum = "0"
--@ EndProperty

--@ BeginMethod
--@ MethodExecSpace=ServerOnly
void OnBeginPlay()
{
log("hello mod I'm component")
log("sum is" .. self.sum)
self.sum = 3
log("sum is" .. self.sum)
self:MyFunction()

local myEntityPosition = self.Entity.TransformComponent.Position
log(myEntityPosition)

for count=1,10,1 do
	myEntityPosition.x = myEntityPosition.x + 0.5
	myEntityPosition.y = myEntityPosition.y + 0.5
	wait(1)
end

self.Entity.TransformComponent.Scale.x = 2
self.Entity.TransformComponent.Scale.y = 2
}
--@ EndMethod

--@ BeginMethod
--@ MethodExecSpace=ServerOnly
void OnEndPlay()
{
log("bye mod")
}
--@ EndMethod

--@ BeginMethod
--@ MethodExecSpace=All
void MyFunction()
{
log("My function")
}
--@ EndMethod
