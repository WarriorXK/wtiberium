include('shared.lua')

function ENT:Draw()
	self:DrawModel()
	Wire_Render(self)
	local tr = LocalPlayer():GetEyeTrace()
	if tr.Hit and tr.Entity and tr.Entity == self then
		AddWorldTip(self:EntIndex(),"Tiberium Chemicals : "..math.Clamp(tostring(self:GetNWInt("ChemTib",0))),0.5,tr.HitPos,self)
	end
end

function ENT:Think()
	if CurTime() >= (self.NextRBUpdate or 0) then
	    self.NextRBUpdate = CurTime()+2
		Wire_UpdateRenderBounds(self)
	end
end
language.Add("wtib_largechemtibstorage","Large Refined Tiberium Tank")
