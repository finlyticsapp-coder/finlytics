CREATE TABLE public.portfolios (
  id uuid NOT NULL DEFAULT gen_random_uuid(),
  created_at timestamp with time zone NOT NULL DEFAULT (now() AT TIME ZONE 'utc'::text),
  name text,
  owner_id uuid,
  assets jsonb DEFAULT '{}'::jsonb,
  performance numeric DEFAULT 0,
  benchmark numeric DEFAULT 0,
  risk_score numeric DEFAULT 0,
  last_updated timestamp with time zone DEFAULT now(),
  CONSTRAINT portfolios_pkey PRIMARY KEY (id)
);
