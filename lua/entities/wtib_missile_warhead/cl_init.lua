include('shared.lua')

function ENT:Draw()
	self:DrawModel()
	WTib.Render(self)
end

function ENT:WTib_GetTooltip()
	return self.PrintName.."\nRaw : "..self:GetRawTiberiumAmount().."\nRefined : "..self:GetRefinedTiberiumAmount().."\nChemicals : "..self:GetTiberiumChemicalsAmount().."\nLiquid : "..self:GetLiquidTiberiumAmount()
end
language.Add(WTib.GetClass(ENT), ENT.PrintName)
