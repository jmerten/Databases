
-- Queries
-- Query1
SELECT SEmployee, ProcedureName, COUNT(*)
FROM visit, visitprocedures, spaprocedure
WHERE visit.visitid = visitprocedures.visitid and visitprocedures.ProcedureID = spaprocedure.ProcedureID
GROUP BY ProcedureName, SEmployee;

-- Query2
SELECT PatronZip, count(PatronZip)
FROM patron
group by PatronZip
order by count(PatronZip) desc;

-- Query3
SELECT PatronName,VisitDate,sum(AmountCharged)
FROM patron p, spaprocedure s, visitprocedures v, visit
where s.ProcedureID = v.ProcedureID and visit.VisitID = v.VisitID and p.PatronID = visit.Patron
group by VisitDate, PatronName
order by sum(AmountCharged) desc;

-- Query4
select ProcedureName, sum(AmountCharged) as 'Total Amount', count(v.ProcedureID)
from visitprocedures v, spaprocedure s
where s.ProcedureID = v.ProcedureID
group by ProcedureName;
