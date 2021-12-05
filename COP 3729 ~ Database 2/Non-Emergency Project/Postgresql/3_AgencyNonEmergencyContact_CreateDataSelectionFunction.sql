CREATE OR REPLACE FUNCTION getAgency("state" VARCHAR DEFAULT '', "county" VARCHAR DEFAULT '', "locality" VARCHAR DEFAULT '')
RETURNS TABLE (agency_name VARCHAR, agency_address VARCHAR, agency_phone VARCHAR) LANGUAGE plpgsql
AS $$
BEGIN
	RETURN QUERY
		SELECT a.name, a.address, a."nonEmergencyPhone"
		FROM public.agencies a
		INNER JOIN public.states_agencies sa ON a.id = sa.agency_id
		INNER JOIN public.states s ON s.id = sa.state_id
		WHERE (upper("state") = upper(s.name) OR "state" = '')
		
		UNION

		SELECT a.name, a.address, a."nonEmergencyPhone"
		FROM public.agencies a
		INNER JOIN public.counties_agencies ca ON a.id = ca.agency_id
		INNER JOIN public.counties c ON c.id = ca.county_id
		WHERE (upper("county") = upper(c.name) OR "county" = '')

		UNION

		SELECT a.name, a.address, a."nonEmergencyPhone"
		FROM public.agencies a
		INNER JOIN public.localities_agencies la ON a.id = la.agency_id
		INNER JOIN public.localities l ON l.id = la.locality_id
		WHERE (upper("locality") = upper(l.name) OR "locality" = '');
		
END;$$