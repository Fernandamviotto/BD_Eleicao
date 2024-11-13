--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-11-13 19:52:16

--
-- TOC entry 217 (class 1259 OID 16388)
-- Name: Candidato; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Candidato" (
    "Id" integer NOT NULL,
    "Nome" character varying(100) NOT NULL,
    "NomeUrna" character varying(100) NOT NULL,
    "Cpf" character varying(15) NOT NULL,
    "DataNascimento" date NOT NULL,
    "Numero" integer NOT NULL,
    "GeneroId" integer NOT NULL,
    "SituacaoEleitoralId" integer NOT NULL,
    "PartidoId" integer NOT NULL,
    "SituacaoTurnoId" integer NOT NULL
);


ALTER TABLE public."Candidato" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16391)
-- Name: Candidato_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Candidato_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Candidato_Id_seq" OWNER TO postgres;

--
-- TOC entry 4898 (class 0 OID 0)
-- Dependencies: 218
-- Name: Candidato_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Candidato_Id_seq" OWNED BY public."Candidato"."Id";


--
-- TOC entry 219 (class 1259 OID 16392)
-- Name: Cargo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Cargo" (
    "Id" integer NOT NULL,
    "Nome" character varying(50) NOT NULL
);


ALTER TABLE public."Cargo" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16395)
-- Name: Cargo_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Cargo_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Cargo_Id_seq" OWNER TO postgres;

--
-- TOC entry 4899 (class 0 OID 0)
-- Dependencies: 220
-- Name: Cargo_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Cargo_Id_seq" OWNED BY public."Cargo"."Id";


--
-- TOC entry 221 (class 1259 OID 16396)
-- Name: Eleicao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Eleicao" (
    "Id" integer NOT NULL,
    "Turno" integer NOT NULL,
    "Ano" integer NOT NULL,
    "LocalId" integer NOT NULL
);


ALTER TABLE public."Eleicao" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16399)
-- Name: EleicaoCandidato; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EleicaoCandidato" (
    "Id" integer NOT NULL,
    "EleicaoId" integer NOT NULL,
    "CandidatoId" integer NOT NULL
);


ALTER TABLE public."EleicaoCandidato" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16402)
-- Name: Eleicao_Candidato_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Eleicao_Candidato_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Eleicao_Candidato_Id_seq" OWNER TO postgres;

--
-- TOC entry 4900 (class 0 OID 0)
-- Dependencies: 223
-- Name: Eleicao_Candidato_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Eleicao_Candidato_Id_seq" OWNED BY public."EleicaoCandidato"."Id";


--
-- TOC entry 224 (class 1259 OID 16403)
-- Name: Eleicao_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Eleicao_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Eleicao_Id_seq" OWNER TO postgres;

--
-- TOC entry 4901 (class 0 OID 0)
-- Dependencies: 224
-- Name: Eleicao_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Eleicao_Id_seq" OWNED BY public."Eleicao"."Id";


--
-- TOC entry 225 (class 1259 OID 16404)
-- Name: Genero; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Genero" (
    "Id" integer NOT NULL,
    "Nome" character varying(30) NOT NULL
);


ALTER TABLE public."Genero" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16407)
-- Name: Genero_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Genero_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Genero_Id_seq" OWNER TO postgres;

--
-- TOC entry 4902 (class 0 OID 0)
-- Dependencies: 226
-- Name: Genero_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Genero_Id_seq" OWNED BY public."Genero"."Id";


--
-- TOC entry 227 (class 1259 OID 16408)
-- Name: Local; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Local" (
    "Id" integer NOT NULL,
    "Cidade" character varying(50) NOT NULL,
    "Estado" character varying(2) NOT NULL
);


ALTER TABLE public."Local" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16411)
-- Name: Local_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Local_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Local_Id_seq" OWNER TO postgres;

--
-- TOC entry 4903 (class 0 OID 0)
-- Dependencies: 228
-- Name: Local_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Local_Id_seq" OWNED BY public."Local"."Id";


--
-- TOC entry 229 (class 1259 OID 16412)
-- Name: Partido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Partido" (
    "Id" integer NOT NULL,
    "Sigla" character varying(10) NOT NULL
);


ALTER TABLE public."Partido" OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16415)
-- Name: Partido_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Partido_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Partido_Id_seq" OWNER TO postgres;

--
-- TOC entry 4904 (class 0 OID 0)
-- Dependencies: 230
-- Name: Partido_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Partido_Id_seq" OWNED BY public."Partido"."Id";


--
-- TOC entry 231 (class 1259 OID 16416)
-- Name: SituacaoEleitoral; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SituacaoEleitoral" (
    "Id" integer NOT NULL,
    "Nome" character varying(30) NOT NULL
);


ALTER TABLE public."SituacaoEleitoral" OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16419)
-- Name: SituacaoEleitoral_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SituacaoEleitoral_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."SituacaoEleitoral_Id_seq" OWNER TO postgres;

--
-- TOC entry 4905 (class 0 OID 0)
-- Dependencies: 232
-- Name: SituacaoEleitoral_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SituacaoEleitoral_Id_seq" OWNED BY public."SituacaoEleitoral"."Id";


--
-- TOC entry 233 (class 1259 OID 16420)
-- Name: SituacaoTurno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SituacaoTurno" (
    "Id" integer NOT NULL,
    "Nome" character varying(25) NOT NULL
);


ALTER TABLE public."SituacaoTurno" OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16423)
-- Name: SituacaoTurno_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SituacaoTurno_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."SituacaoTurno_Id_seq" OWNER TO postgres;

--
-- TOC entry 4906 (class 0 OID 0)
-- Dependencies: 234
-- Name: SituacaoTurno_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SituacaoTurno_Id_seq" OWNED BY public."SituacaoTurno"."Id";


--
-- TOC entry 4681 (class 2604 OID 16424)
-- Name: Candidato Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Candidato" ALTER COLUMN "Id" SET DEFAULT nextval('public."Candidato_Id_seq"'::regclass);


--
-- TOC entry 4682 (class 2604 OID 16425)
-- Name: Cargo Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cargo" ALTER COLUMN "Id" SET DEFAULT nextval('public."Cargo_Id_seq"'::regclass);


--
-- TOC entry 4683 (class 2604 OID 16426)
-- Name: Eleicao Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Eleicao" ALTER COLUMN "Id" SET DEFAULT nextval('public."Eleicao_Id_seq"'::regclass);


--
-- TOC entry 4684 (class 2604 OID 16427)
-- Name: EleicaoCandidato Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EleicaoCandidato" ALTER COLUMN "Id" SET DEFAULT nextval('public."Eleicao_Candidato_Id_seq"'::regclass);


--
-- TOC entry 4685 (class 2604 OID 16428)
-- Name: Genero Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Genero" ALTER COLUMN "Id" SET DEFAULT nextval('public."Genero_Id_seq"'::regclass);


--
-- TOC entry 4686 (class 2604 OID 16429)
-- Name: Local Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Local" ALTER COLUMN "Id" SET DEFAULT nextval('public."Local_Id_seq"'::regclass);


--
-- TOC entry 4687 (class 2604 OID 16430)
-- Name: Partido Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Partido" ALTER COLUMN "Id" SET DEFAULT nextval('public."Partido_Id_seq"'::regclass);


--
-- TOC entry 4688 (class 2604 OID 16431)
-- Name: SituacaoEleitoral Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SituacaoEleitoral" ALTER COLUMN "Id" SET DEFAULT nextval('public."SituacaoEleitoral_Id_seq"'::regclass);


--
-- TOC entry 4689 (class 2604 OID 16432)
-- Name: SituacaoTurno Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SituacaoTurno" ALTER COLUMN "Id" SET DEFAULT nextval('public."SituacaoTurno_Id_seq"'::regclass);


--
-- TOC entry 4875 (class 0 OID 16388)
-- Dependencies: 217
-- Data for Name: Candidato; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Candidato" VALUES (1, 'ULISSES DE JESUS MAIA KOTSIFAS', 'ULISSES MAIA', '***722809**', '1969-09-01', 12, 1, 1, 1, 1);
INSERT INTO public."Candidato" VALUES (2, 'SILVIO MAGALHÃES BARROS II', 'SILVIO BARROS', '***762739**', '1956-12-10', 11, 1, 1, 2, 5);
INSERT INTO public."Candidato" VALUES (3, 'WILSON LUIZ DARIENZO QUINTEIRO', 'WILSON QUINTEIRO', '***430669**', '1971-04-07', 40, 1, 1, 3, 5);
INSERT INTO public."Candidato" VALUES (4, 'NILSON AMERICO', 'INVESTIGADOR NILSON', '***939839**', '1962-08-18', 50, 1, 1, 4, 5);
INSERT INTO public."Candidato" VALUES (5, 'PRISCILA GUEDES DA LUZ', 'PRISCILA GUEDES', '***371028**', '1980-01-01', 16, 3, 1, 5, 5);
INSERT INTO public."Candidato" VALUES (6, 'HUMBERTO JOSÉ HENRIQUE', 'HUMBERTO HENRIQUE', '***485609**', '1964-05-22', 13, 1, 1, 6, 5);
INSERT INTO public."Candidato" VALUES (7, 'HERCULANO DOS REIS FERREIRA', 'HERCULANO FERREIRA', '***167279**', '1951-01-05', 70, 1, 1, 7, 5);
INSERT INTO public."Candidato" VALUES (8, 'FLAVIO MARCELO GONÇALVES VICENTE', 'FLAVIO VICENTE', '***079899**', '1971-04-16', 18, 1, 1, 8, 5);
INSERT INTO public."Candidato" VALUES (9, 'FABIANA CHAVES MARTINS', 'FABÍ', '***464941**', '1995-07-04', 65180, 3, 1, 9, 6);
INSERT INTO public."Candidato" VALUES (10, 'GABRIELA ELOISE DE CASTRO COSTA', 'GABS CASTRO', '***126789**', '1993-04-25', 65775, 3, 1, 9, 6);
INSERT INTO public."Candidato" VALUES (11, 'GIMENA COMARELLA DIPP', 'GIMENA DIPP', '***453779**', '1988-01-23', 65244, 3, 1, 9, 6);
INSERT INTO public."Candidato" VALUES (12, 'NEUSA ALTOE', 'NEUSA ALTOÉ', '***481299**', '1951-09-04', 65111, 3, 1, 9, 6);
INSERT INTO public."Candidato" VALUES (13, 'NEUSA FERREIRA VELOSO CELÃO', 'NEUSA VELOSO CELÃO', '***239419**', '1977-11-14', 65000, 3, 1, 9, 6);
INSERT INTO public."Candidato" VALUES (14, 'ROSANA FERREIRA DE LIMA', 'ROSANA LOPES', '***700429**', '1982-01-18', 65333, 3, 1, 9, 6);
INSERT INTO public."Candidato" VALUES (15, 'ANDERSON PEDRO RODRIGUES', 'ANDERSON CADEIRANTE', '***524379**', '1979-02-19', 65555, 1, 1, 9, 6);
INSERT INTO public."Candidato" VALUES (16, 'DIRCEU DE OLIVEIRA', 'DIRCEUZINHO', '***542329**', '1963-01-18', 65444, 1, 1, 9, 6);
INSERT INTO public."Candidato" VALUES (17, 'MANOEL ALVARES SOBRINHO', 'DR. MANOEL', '***119034**', '1946-12-08', 65123, 1, 1, 9, 6);
INSERT INTO public."Candidato" VALUES (18, 'MILTON ALBANO GOMES', 'MILTINHO', '***122799**', '1961-10-14', 65650, 1, 1, 9, 6);
INSERT INTO public."Candidato" VALUES (19, 'ELIZABETH MARA KAUCHE CALÇAVARA BATISTA', 'BETI CALÇAVARA', '***251358**', '1950-08-30', 12012, 3, 1, 1, 6);
INSERT INTO public."Candidato" VALUES (20, 'LEILA SIGNEI ZACHARIAS', 'LEILA ZACHARIAS', '***244249**', '1965-09-06', 12051, 3, 1, 1, 6);
INSERT INTO public."Candidato" VALUES (21, 'ROSELI SOARES GUIMARÃES MORAES', 'PROFESSORA ROSELI', '***526679**', '1969-04-16', 12345, 3, 1, 1, 6);
INSERT INTO public."Candidato" VALUES (22, 'SIRLEI APARECIDA DE FREITAS RAFAEL', 'SIRLEI FREITAS', '***040389**', '1975-09-23', 12456, 3, 1, 1, 6);
INSERT INTO public."Candidato" VALUES (23, 'SÔNIA SEIBERLICH', 'SONIA DA AERONOVA', '***095327**', '1958-10-01', 12222, 3, 1, 1, 6);
INSERT INTO public."Candidato" VALUES (24, 'ADÍLSON COSTA MACHADO', 'ADILSON COSTA', '***912009**', '1972-09-29', 12200, 1, 1, 1, 6);
INSERT INTO public."Candidato" VALUES (25, 'ALTEMIR DIVINO RIBEIRO', 'TEMIR RIBEIRO', '***955289**', '1964-05-16', 12712, 1, 1, 1, 6);
INSERT INTO public."Candidato" VALUES (26, 'ANNIBAL BONEMER AZEVEDO DA ROCHA', 'ANNÍBAL BIANCHINI', '***157559**', '1991-07-11', 12007, 1, 1, 1, 6);
INSERT INTO public."Candidato" VALUES (27, 'FRANZ WAGNER DAL BELO', 'FRANZ WAGNER', '***168388**', '1978-10-06', 12000, 1, 1, 1, 6);
INSERT INTO public."Candidato" VALUES (28, 'GUSTAVO HENRIQUE DOS SANTOS', 'GUSTAVO HENRIQUE', '***651679**', '1958-07-15', 12500, 1, 1, 1, 6);
INSERT INTO public."Candidato" VALUES (29, 'JOSE FUGII', 'JOSÉ FUGII', '***322469**', '1955-02-18', 12212, 1, 1, 1, 6);
INSERT INTO public."Candidato" VALUES (30, 'NORIVAL BARBOSA', 'PÊLO DE GATO', '***688108**', '1961-02-26', 12333, 1, 1, 1, 6);
INSERT INTO public."Candidato" VALUES (31, 'PAULO SERGIO DA SILVA', 'SOLDADO SERGIO', '***685829**', '1974-08-04', 12190, 1, 1, 1, 6);
INSERT INTO public."Candidato" VALUES (32, 'ROGÉRIO CALAZANS DA SILVA', 'ROGÉRIO CALAZANS', '***324521**', '1978-08-24', 12123, 1, 1, 1, 6);
INSERT INTO public."Candidato" VALUES (33, 'ELIANE CIBELE DOS SANTOS', 'CIBELE SANTOS', '***173239**', '1973-10-15', 31030, 3, 1, 10, 6);
INSERT INTO public."Candidato" VALUES (34, 'GABRIELA CHAGAS ROTTA', 'GABRIELA ROTTA', '***880449**', '1977-05-25', 31400, 3, 1, 10, 6);
INSERT INTO public."Candidato" VALUES (35, 'MARCIA MARA DE CASTRO', 'CANTORA MARCIA MARA', '***670299**', '1974-10-18', 31123, 3, 1, 10, 6);
INSERT INTO public."Candidato" VALUES (36, 'RAILDE MASSON CARDOZO', 'PROFESSORA RAILDA MASSON', '***868879**', '1966-10-28', 31444, 3, 1, 10, 6);
INSERT INTO public."Candidato" VALUES (37, 'ROSILENE APARECIDA BERNARDO', 'ROSE DA COLETA', '***071459**', '1979-12-31', 31100, 3, 1, 10, 6);
INSERT INTO public."Candidato" VALUES (38, 'SABRINA TAYSE FERNANDES DE ALMEIDA', 'SABRINA ALMEIDA', '***248159**', '1984-05-24', 31300, 3, 1, 10, 6);
INSERT INTO public."Candidato" VALUES (39, 'ALEX SANDRO DE OLIVEIRA CHAVES', 'ALEX CHAVES', '***696319**', '1976-01-24', 31321, 1, 1, 10, 4);
INSERT INTO public."Candidato" VALUES (40, 'ANTONIO LIU DE OLIVEIRA', 'PROFESSOR LIU', '***890729**', '1956-04-05', 31000, 1, 1, 10, 6);
INSERT INTO public."Candidato" VALUES (41, 'APARECIDO DOMINGOS REGINI', 'ZEBRÃO', '***776029**', '1960-09-17', 31680, 1, 1, 10, 6);
INSERT INTO public."Candidato" VALUES (42, 'CARLOS GOMES DE OLIVEIRA', 'PROFESSOR ROSA', '***501868**', '1965-10-21', 31234, 1, 1, 10, 6);
INSERT INTO public."Candidato" VALUES (43, 'CRISTIAN MARCOS MAIA DA SILVA', 'MANINHO', '***249209**', '1972-01-24', 31456, 1, 1, 10, 6);
INSERT INTO public."Candidato" VALUES (44, 'DORVALINO LOPES DE MACEDO', 'DORVALINO MACEDO', '***491368**', '1975-04-12', 31500, 1, 1, 10, 6);
INSERT INTO public."Candidato" VALUES (45, 'JOAO BATISTA DE SOUZA', 'JOAO OFICIAL', '***444819**', '1954-09-20', 31800, 1, 1, 10, 6);
INSERT INTO public."Candidato" VALUES (46, 'JOSE MARCOS ALVES DOS SANTOS', 'MARQUINHOS ALVES', '***301389**', '1971-10-13', 31200, 1, 1, 10, 6);
INSERT INTO public."Candidato" VALUES (47, 'MARCOS JOSE MARCAL DE ARAUJO', 'CAPELINHA', '***062689**', '1974-11-16', 31310, 1, 1, 10, 6);
INSERT INTO public."Candidato" VALUES (48, 'ODAIR DE OLIVEIRA LIMA', 'ODAIR FOGUETEIRO', '***478039**', '1969-12-01', 31789, 1, 1, 10, 3);
INSERT INTO public."Candidato" VALUES (49, 'ONIVALDO BARRIS', 'ONIVALDO BARRIS', '***757419**', '1951-01-24', 31222, 1, 1, 10, 3);
INSERT INTO public."Candidato" VALUES (50, 'VALDE PORTERO FERNANDES', 'VALDE', '***371529**', '1956-07-05', 31132, 1, 1, 10, 6);
INSERT INTO public."Candidato" VALUES (51, 'VALTER VIANA', 'VALTER VIANA', '***288599**', '1967-02-08', 31031, 1, 1, 10, 6);
INSERT INTO public."Candidato" VALUES (52, 'WESLEY FALCAO TULER', 'WESLEY TULER', '***574058**', '1963-01-28', 31555, 1, 1, 10, 6);
INSERT INTO public."Candidato" VALUES (53, 'WILLIAN PORFIRIO RIBEIRO', 'WILLIAN PORFIRIO', '***741969**', '1991-05-16', 31345, 1, 1, 10, 6);
INSERT INTO public."Candidato" VALUES (54, 'NEUZA MARIA CAMPOS DA SILVA', 'NEUZA CAMPOS', '***860159**', '1963-09-10', 35123, 3, 1, 11, 5);
INSERT INTO public."Candidato" VALUES (55, 'ELIANE REGINA DOS SANTOS BORGES DA SILVA', 'DRA ELIANE REGINA', '***155819**', '1970-01-22', 15222, 3, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (56, 'IRACEMA PEREIRA SAMPAIO', 'IRACEMA PEREIRA', '***991629**', '1973-07-26', 15020, 3, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (57, 'JANDIS MARIA DA SILVA RICCI MARTINS', 'JADE JANDIS', '***118029**', '1957-03-02', 15456, 3, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (58, 'LEIDA MARIA RISSARDO', 'LEIDA', '***368719**', '1969-05-15', 15666, 3, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (59, 'LIANA FURRIGO', 'NINA', '***254012**', '1978-08-26', 15010, 3, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (60, 'MARIA DAS DORES BERNARDO', 'DORINHA', '***821669**', '1962-01-27', 15157, 3, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (61, 'MARIANE FIRAK MARTINS', 'MARI', '***031719**', '1993-11-17', 15016, 3, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (62, 'AMAURI DE OLIVEIRA', 'AMAURI DO ALVORADA', '***634289**', '1964-11-09', 15177, 1, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (63, 'APARECIDO DOMINGUES LEITÃO', 'APARECIDO LEITÃO', '***491859**', '1970-04-12', 15000, 1, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (64, 'EDIVAL MENDONÇA SELLA', 'SELLA', '***479859**', '1958-02-28', 15190, 1, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (65, 'EMERSON MOREIRA GOMES', 'EMERSON VIOLA', '***972739**', '1962-09-12', 15300, 1, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (66, 'IDEBRANDO RIBEIRO PINTO', 'IDEBRANDO', '***127899**', '1972-09-14', 15333, 1, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (67, 'JOSÉ CARLOS PINHEIRO', 'PINHEIRO', '***572578**', '1965-07-12', 15015, 1, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (68, 'LORIVAL PEREIRA', 'PASTOR LORIVAL', '***143889**', '1975-06-19', 15678, 1, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (69, 'MARCELO MAZARÃO', 'MARCELO MAZARÃO', '***706459**', '1969-04-12', 15011, 1, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (70, 'ONIVALDO FAVORETTO', 'ONIVALDO FAVORETTO', '***518929**', '1960-02-08', 15515, 1, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (71, 'OSVALDO FAGUNDES DIAS', 'TUTI', '***828209**', '1966-07-13', 15100, 1, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (72, 'PASCOAL LEITE DE ALBUQUERQUE', 'DR. PASCOAL', '***944304**', '1948-11-22', 15777, 1, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (73, 'PAULO ROBERTO DE OLIVEIRA', 'PAULINHO DA SAÚDE', '***976809**', '1952-06-25', 15123, 1, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (74, 'PEDRO CARDOSO DOS SANTOS', 'PEDRINHO', '***040179**', '1965-06-20', 15400, 1, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (75, 'RICARDO HIDEO INOMATA', 'RICARDO INOMATA', '***319149**', '1983-06-30', 15789, 1, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (76, 'SERGIO APARECIDO DANTAS DE ARRUDA', 'SERGIO DANTAS', '***048848**', '1963-07-06', 15500, 1, 1, 12, 5);
INSERT INTO public."Candidato" VALUES (77, 'ANA PAULA MASCOTE', 'ANA PAULA MASCOTE', '***927039**', '1981-12-22', 33900, 3, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (78, 'APARECIDA DA COSTA PEREIRA', 'CIDINHA', '***948309**', '1971-08-21', 33800, 3, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (79, 'CALINA PALMA', 'CALINA PALMA', '***431139**', '1985-11-16', 33014, 3, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (80, 'DINA MARIA ZANATTA', 'DINA ZANATTA', '***808309**', '1971-04-17', 33033, 3, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (81, 'MARÇA DA SILVA', 'MARÇA DA SILVA', '***728619**', '1975-03-15', 33321, 3, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (82, 'TATIANA APARECIDA DOS SANTOS FERREIRA', 'TATI CABELEIREIRA', '***930209**', '1984-01-16', 33333, 3, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (83, 'ADILSON DE JESUS CINTRA', 'ADILSON DO BAR', '***451199**', '1972-12-24', 33540, 1, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (84, 'CARLOS EDUARDO SABOIA GOMES', 'DR SABOIA', '***394869**', '1947-02-27', 33300, 1, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (85, 'EDSON LUIZ PEREIRA', 'TENENTE EDSON LUIZ', '***054869**', '1963-02-18', 33456, 1, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (86, 'IVAN SOARES', 'IVAN SOARES', '***993979**', '1951-02-25', 33789, 1, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (87, 'JOAO CORREIA DE ARAUJO NETO', 'JOAOZINHO CIKA', '***902119**', '1958-10-01', 33066, 1, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (88, 'JOSE AUGUSTO MACHADO', 'AUGUSTO GASTAO', '***244859**', '1968-06-24', 33040, 1, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (89, 'MILTON RAESKI', 'MILTINHO TCCC', '***947849**', '1971-08-15', 33045, 1, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (90, 'PEDRO BARROS DE OLIVEIRA', 'DR PEDRO BARROS', '***114897**', '1941-01-17', 33777, 1, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (91, 'PEDRO GINO DOS SANTOS', 'PEDRO DA FARMACIA', '***879939**', '1971-06-28', 33222, 1, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (92, 'RODRIGO PRUDENCIO', 'RODRIGO PRUDENCIO', '***859679**', '1984-12-28', 33111, 1, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (93, 'SEBASTIÃO CARLOS FARIA', 'SEBASTIÃO CARLOS FARIA', '***214068**', '1969-07-05', 33765, 1, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (94, 'SIDINEY ALVES', 'SIDINEY ALVES', '***058779**', '1962-03-23', 33500, 1, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (95, 'WALDOMIRO AMADEU DIOGO', 'MIRO MASSA FINA', '***031709**', '1966-11-09', 33980, 1, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (96, 'ZEOTASIO VELOSO NEVES', 'ZÉ OTAVIO VELOSO', '***720989**', '1972-11-06', 33100, 1, 1, 13, 5);
INSERT INTO public."Candidato" VALUES (97, 'CARMEN ABILENE SORIANO INOCENTE', 'CARMEN INOCENTE', '***240029**', '1963-08-07', 11123, 3, 1, 2, 6);
INSERT INTO public."Candidato" VALUES (98, 'EGIPCIALINDA DE ARAUJO', 'EGIPCIA', '***532089**', '1975-02-17', 11000, 3, 1, 2, 6);
INSERT INTO public."Candidato" VALUES (99, 'LILIAN APARECIDA COSTA FERREIRA', 'LILIAN FERREIRA', '***122008**', '1968-02-16', 11882, 3, 1, 2, 6);
INSERT INTO public."Candidato" VALUES (100, 'MARILZA GONZAGA XAVIER', 'PROFESSORA BRANCA', '***601029**', '1965-04-14', 11666, 3, 1, 2, 6);
INSERT INTO public."Candidato" VALUES (101, 'VALESKA NAYANE COSTA', 'VALESKA COSTA', '***586409**', '1986-12-31', 11888, 3, 1, 2, 6);
INSERT INTO public."Candidato" VALUES (102, 'BELINO BRAVIN FILHO', 'BRAVIN', '***119639**', '1947-05-28', 11900, 1, 1, 2, 4);
INSERT INTO public."Candidato" VALUES (103, 'CÉLIO EMERIQUIS MOREIRA', 'PASTOR CELIO', '***022949**', '1963-01-13', 11456, 1, 1, 2, 6);
INSERT INTO public."Candidato" VALUES (104, 'ISMAEL ROBERTO BATISTA MELO', 'ISMAEL', '***442209**', '1962-06-09', 11011, 1, 1, 2, 6);
INSERT INTO public."Candidato" VALUES (105, 'JONES DARC DE JESUS', 'NEGRÃO SORRISO', '***160688**', '1974-12-06', 11222, 1, 1, 2, 6);
INSERT INTO public."Candidato" VALUES (106, 'LUIS STEINLE DE ARAUJO', 'LUIS GARI', '***863779**', '1978-07-16', 11600, 1, 1, 2, 6);
INSERT INTO public."Candidato" VALUES (107, 'LUIZ GUERINO FERIANI', 'FERIANI', '***573329**', '1961-02-17', 11111, 1, 1, 2, 6);
INSERT INTO public."Candidato" VALUES (108, 'MARIO MASSAO HOSSOKAWA', 'MARIO HOSSOKAWA', '***887369**', '1947-04-22', 11789, 1, 1, 2, 3);
INSERT INTO public."Candidato" VALUES (109, 'RUBENS DOS SANTOS', 'RUBENS DOS SANTOS', '***149639**', '1971-01-26', 11777, 1, 1, 2, 6);
INSERT INTO public."Candidato" VALUES (110, 'SILVIO MARCOS TORRECILHA', 'SILVIO TORRECILHA', '***193909**', '1975-09-15', 11500, 1, 1, 2, 6);
INSERT INTO public."Candidato" VALUES (111, 'VALDIR PIGNATA', 'VALDIR PIGNATA', '***962959**', '1958-05-05', 11511, 1, 1, 2, 6);
INSERT INTO public."Candidato" VALUES (112, 'KELLY CRISTINA ZANZI', 'KELLY ZANZI', '***327569**', '1982-04-30', 54540, 3, 1, 14, 5);
INSERT INTO public."Candidato" VALUES (113, 'ROSANA CRISTINA BERNARDO', 'ROSANA BERNARDO', '***079039**', '1972-01-04', 54000, 3, 1, 14, 5);
INSERT INTO public."Candidato" VALUES (114, 'EDSON DAMACENO MARTINS', 'EDSON MARTINS', '***378979**', '1976-10-03', 54040, 1, 1, 14, 5);
INSERT INTO public."Candidato" VALUES (115, 'JANAILSON AIRES DA SILVA', 'JANAILSON AIRES', '***814502**', '1984-10-14', 54800, 1, 1, 14, 5);
INSERT INTO public."Candidato" VALUES (116, 'JOEL DE ALMEIDA', 'DIÁCONO JOEL', '***345638**', '1976-07-25', 54123, 1, 1, 14, 5);
INSERT INTO public."Candidato" VALUES (117, 'RAQUEL GOMES CLEMENTINO', 'RAQUEL GOMES', '***531889**', '1988-11-23', 23123, 3, 1, 15, 6);
INSERT INTO public."Candidato" VALUES (118, 'JANDERSON FLAVIO MANTOVANI', 'FLAVIO MANTOVANI', '***371809**', '1978-12-31', 23001, 1, 1, 15, 4);
INSERT INTO public."Candidato" VALUES (119, 'SÉRGIO TAKAO SATO', 'TAKAO', '***059099**', '1961-12-31', 23456, 1, 1, 15, 6);
INSERT INTO public."Candidato" VALUES (120, 'ANDREIA DE OLIVEIRA AVANCINI', 'ANDREIA DE OLIVEIRA AVANCINI', '***147789**', '1979-09-27', 22333, 3, 1, 16, 6);
INSERT INTO public."Candidato" VALUES (121, 'CLAUDIA PEREIRA', 'CLAUDIA PEREIRA', '***173439**', '1983-12-26', 22350, 3, 1, 16, 6);
INSERT INTO public."Candidato" VALUES (122, 'ERIKA MAEDA FORTES', 'ERIKA MAEDA DO POPULAR', '***795649**', '1987-06-07', 22888, 3, 1, 16, 6);
INSERT INTO public."Candidato" VALUES (123, 'REGINA CELIA DA SILVA', 'REGINA DO MAGNÉTICO', '***060019**', '1961-08-09', 22456, 3, 1, 16, 6);
INSERT INTO public."Candidato" VALUES (124, 'ANDRE TEODORO VIEIRA FILHO', 'ANDRE VIEIRA', '***982419**', '1969-05-02', 22321, 1, 1, 16, 6);
INSERT INTO public."Candidato" VALUES (125, 'ANTONIO DOS SANTOS SOARES', 'ANTONIO DOS SANTOS SOARES', '***432339**', '1946-04-26', 22345, 1, 1, 16, 6);
INSERT INTO public."Candidato" VALUES (126, 'DIONIZIO HENRIQUE GARGARO', 'HENRIQUE MARINGÁ LIXAS', '***630429**', '1968-08-25', 22622, 1, 1, 16, 6);
INSERT INTO public."Candidato" VALUES (127, 'LUCIANO MENDES', 'LUCIANO MENDES (ZOINHO)', '***653379**', '1976-09-20', 22123, 1, 1, 16, 6);
INSERT INTO public."Candidato" VALUES (128, 'PAULO ROGERIO DO CARMO', 'DO CARMO', '***849279**', '1976-10-08', 22222, 1, 1, 16, 4);
INSERT INTO public."Candidato" VALUES (129, 'TATSURO SHIKAMORI', 'TATSURO SHIKAMORI', '***933769**', '1981-07-07', 22022, 1, 1, 16, 6);
INSERT INTO public."Candidato" VALUES (130, 'YUTAKA MARIO KOBAYASHI JUNIOR', 'YUTAKA MARIO KOBAYASHI JUNIOR', '***206389**', '1984-06-11', 22000, 1, 1, 16, 6);
INSERT INTO public."Candidato" VALUES (131, 'VERA MARIA GODOY', 'VERA GODOY', '***506759**', '1962-01-24', 10110, 3, 1, 17, 6);
INSERT INTO public."Candidato" VALUES (132, 'SERGIO MARCOS BUENO', 'SERGIO BUENO', '***864949**', '1968-04-06', 10123, 1, 1, 17, 6);
INSERT INTO public."Candidato" VALUES (133, 'OLGA PIRES DE LEMOS DA CUNHA', 'OLGA PROTETORA', '***354519**', '1959-05-14', 90900, 3, 1, 18, 6);
INSERT INTO public."Candidato" VALUES (134, 'ELIANA MARIA GONSALES CRUZ ORTEGA', 'ELIANA ORTEGA', '***404809**', '1963-03-10', 44444, 3, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (135, 'ELIZABETE DE FATIMA MASCOTE DO PRADO', 'BETE MASCOTE', '***309719**', '1966-10-21', 44567, 3, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (136, 'GABRIELA LETICIA DOS SANTOS', 'GABRIELA LETICIA DOS SANTOS', '***702289**', '1997-12-08', 44333, 3, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (137, 'JANDIRA DE OLIVEIRA', 'JANDIRA', '***032899**', '1962-05-18', 44131, 3, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (138, 'LENIR DAS GRAÇAS RONDONI GAVIOLI', 'LENIR DAS GRAÇAS R GAVIOLI', '***403999**', '1958-08-29', 44111, 3, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (139, 'MAJORIE CATHERINE CAPDEBOSCQ', 'MAJÔ', '***265259**', '1990-03-02', 44123, 3, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (140, 'MARCELA PIRES RAMALHO', 'MARCELA RAMALHO', '***345079**', '1992-11-12', 44789, 3, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (141, 'ALESSANDRO NERI', 'ALESSANDRO NERI', '***330959**', '1979-06-14', 44400, 1, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (142, 'ANTONIO LUCIO DE PAULO', 'ANTONIO LUCIO', '***134829**', '1956-06-22', 44140, 1, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (143, 'ARI DOMINGOS MORO', 'ARI DOMINGOS MORO', '***157119**', '1964-03-21', 44100, 1, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (144, 'CARLOS MOREIRA', 'CARLOS MOREIRA', '***653269**', '1959-02-11', 44000, 1, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (145, 'CRISLEY ANGEL LACERDA', 'CRISLEY LACERDA', '***177748**', '1976-02-18', 44500, 1, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (146, 'DEVANIR APARECIDO COSTA', 'DEVANIR COSTA', '***862949**', '1973-10-10', 44777, 1, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (147, 'DIRCEU GONÇALVES DE CASTRO', 'DIRCEU GONÇALVES DE CASTRO', '***688458**', '1960-09-25', 44678, 1, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (148, 'EZILDO BRASIL DA SILVA', 'EZILDO BRASIL', '***769119**', '1970-08-13', 44044, 1, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (149, 'FERNANDO JOSE DE MOURA', 'FERNANDO GIRÉ', '***714469**', '1978-08-07', 44888, 1, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (150, 'ISMAEL JUNIOR MURBACH BEDIN', 'ISMAEL BEDIN', '***145809**', '1989-07-02', 44456, 1, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (151, 'JOÃO MONTEIRO', 'JOÃO MONTEIRO', '***113849**', '1962-06-21', 44555, 1, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (152, 'JOSE APARECIDO DOS SANTOS', 'JOSÉ SANTOS', '***026105**', '1974-10-14', 44448, 1, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (153, 'JOSE CARLOS MARQUES LUIZ', 'ZÉ PORTUGUÊS', '***844979**', '1960-03-03', 44010, 1, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (154, 'MOISES CASTANHO DIAS', 'MOISES CASTANHO DIAS', '***574079**', '1960-12-12', 44013, 1, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (155, 'SAMUEL LIMA DA SILVA', 'SAMUKA', '***912141**', '1970-10-21', 44115, 1, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (156, 'THIAGO FERREIRA CAVALHERI', 'TIKÃO', '***288789**', '1988-10-30', 44222, 1, 1, 19, 5);
INSERT INTO public."Candidato" VALUES (157, 'EDILAINE APARECIDA DOS SANTOS', 'EDILAINE SANTOS', '***039759**', '1974-10-02', 28123, 3, 1, 20, 6);
INSERT INTO public."Candidato" VALUES (158, 'GERALDO LOURENÇO DOS SANTOS', 'GERALDINHO DO BUFFET TROPICAL', '***272369**', '1965-01-15', 28192, 1, 1, 20, 6);
INSERT INTO public."Candidato" VALUES (159, 'MARCELO MORAIS', 'PROF MARCELO MORAIS', '***705839**', '1969-03-23', 28028, 1, 1, 20, 6);
INSERT INTO public."Candidato" VALUES (160, 'PAULO SERGIO DA SILVA', 'PAULÃO TARUMÃ', '***801479**', '1971-01-29', 28444, 1, 1, 20, 6);
INSERT INTO public."Candidato" VALUES (161, 'RESDIVALDO FERREIRA LOBO', 'RE', '***975909**', '1964-08-06', 28456, 1, 1, 20, 6);
INSERT INTO public."Candidato" VALUES (162, 'CLAUDIA BOCCHI', 'CLAUDIA BOCCHI', '***608569**', '1972-01-14', 40700, 3, 1, 3, 5);
INSERT INTO public."Candidato" VALUES (163, 'GAETANA CAPORUSSO', 'PROF.ª GAETANA', '***532259**', '1955-08-14', 40123, 3, 1, 3, 5);
INSERT INTO public."Candidato" VALUES (164, 'LEIDE MISMA LOPES', 'LEIDE', '***381349**', '1981-09-14', 40177, 3, 1, 3, 5);
INSERT INTO public."Candidato" VALUES (165, 'ANTONIO APARECIDO SOUZA DOS REIS', 'ANTONIO DIVINO', '***002719**', '1963-03-26', 40702, 1, 1, 3, 5);
INSERT INTO public."Candidato" VALUES (166, 'ANTONIO CARLOS DE TOLEDO', 'TOLEDO DA RÁDIO', '***914839**', '1950-05-10', 40234, 1, 1, 3, 5);
INSERT INTO public."Candidato" VALUES (167, 'FRANCISCO DE ASSIS CRISPIN', 'CHICO DA OFICINA', '***437269**', '1952-03-06', 40277, 1, 1, 3, 5);
INSERT INTO public."Candidato" VALUES (168, 'MÁRIO EUGÊNIO LOPES', 'MÁRIO DO OLÍMPICO', '***718809**', '1966-06-14', 40040, 1, 1, 3, 5);
INSERT INTO public."Candidato" VALUES (169, 'PAULO SONI', 'DR. PAULO SONI', '***888087**', '1954-01-04', 40120, 1, 1, 3, 5);
INSERT INTO public."Candidato" VALUES (170, 'CRISTIANE SPONTON VECHIATO', 'CRISTIANE SPONTON', '***534559**', '1974-06-24', 20009, 3, 1, 21, 5);
INSERT INTO public."Candidato" VALUES (171, 'LARISSA PERDOMO', 'LARISSA PERDOMO', '***482949**', '1988-06-21', 20666, 3, 1, 21, 5);
INSERT INTO public."Candidato" VALUES (172, 'RUBIA VALERIA MACARIS', 'RUBIA MACARIS', '***972159**', '1975-01-29', 20333, 3, 1, 21, 5);
INSERT INTO public."Candidato" VALUES (173, 'SANDRA APARECIDA RODRIGUES', 'SANDRA DA SAÚDE', '***189159**', '1963-03-24', 20777, 3, 1, 21, 5);
INSERT INTO public."Candidato" VALUES (174, 'ANANIAS RODRIGUES DE SOUZA FILHO', 'GAOTINHO ANANIAS RODRIGUES', '***113389**', '1956-08-14', 20789, 1, 1, 21, 5);
INSERT INTO public."Candidato" VALUES (175, 'CARLOS OLIVEIRA ALENCAR JUNIOR', 'CARLOS ALENCAR JR', '***555059**', '1985-01-05', 20044, 1, 1, 21, 5);
INSERT INTO public."Candidato" VALUES (176, 'CARLOS ROBERTO PICANCIO', 'CARLOS PADEIRO', '***060599**', '1962-11-25', 20222, 1, 1, 21, 5);
INSERT INTO public."Candidato" VALUES (177, 'ELI ALVES', 'TAYSON', '***964509**', '1970-09-30', 20888, 1, 1, 21, 5);
INSERT INTO public."Candidato" VALUES (178, 'HENRIQUE AUGUSTO PIRES DA SILVA ASSIS MACHADO', 'HENRIQUE MACHADO', '***248099**', '1985-07-15', 20007, 1, 1, 21, 5);
INSERT INTO public."Candidato" VALUES (179, 'HERMES SALGUEIRO DA SILVA', 'HERMES SALGUEIRO', '***801239**', '1967-07-09', 20016, 1, 1, 21, 5);
INSERT INTO public."Candidato" VALUES (180, 'JOSÉ CARLOS DA SILVA', 'CURIO DO BICO FINO', '***583239**', '1967-01-28', 20123, 1, 1, 21, 5);
INSERT INTO public."Candidato" VALUES (181, 'LAÉCIO ALVES DE ALMEIDA', 'LAERCIO FALA FINA', '***646089**', '1961-02-18', 20111, 1, 1, 21, 5);
INSERT INTO public."Candidato" VALUES (182, 'LEANDRO APARECIDO DE OLIVEIRA DA SILVA', 'LEANDRO SILVA FOTOGRÁFO', '***857769**', '1974-01-05', 20000, 1, 1, 21, 5);
INSERT INTO public."Candidato" VALUES (183, 'MARCOS DE OLIVEIRA PAIXÃO', 'MARCOS PAIXÃO', '***215049**', '1980-07-26', 20321, 1, 1, 21, 5);
INSERT INTO public."Candidato" VALUES (184, 'VALDEMIR TEODORO BERNARDINO', 'VIZINHO', '***487759**', '1970-12-10', 20456, 1, 1, 21, 5);
INSERT INTO public."Candidato" VALUES (185, 'EUNICE MARIA DE LIMA', 'EUNICE LIMA', '***290618**', '1959-08-21', 55111, 3, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (186, 'GABRIELA MOTTA DOS SANTOS', 'GABI MOTTA', '***620529**', '1986-07-08', 55907, 3, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (187, 'JANETE PIASSA CANTIERI', 'JANETE CANTIERI', '***179239**', '1971-02-21', 55600, 3, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (188, 'MARLEI MARCELINO CARDOSO', 'MARLEI CARDOSO', '***061199**', '1960-05-04', 55556, 3, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (189, 'SANDRA HELENA SANTOS', 'SANDRINHA DA HABITAÇÃO', '***353209**', '1958-11-25', 55222, 3, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (190, 'SIRLEY DE FATIMA FICHA MARANGONI', 'SIRLEY FICHA', '***217109**', '1965-08-19', 55117, 3, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (191, 'VERA LUCIA LOPES', 'VERA LOPES', '***389748**', '1978-06-13', 55334, 3, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (192, 'ADEMARO KATUYOSHI KIYOHARA', 'ADEMARO KIYOHARA', '***562948**', '1964-08-25', 55009, 1, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (193, 'ADRIANO DA SILVA DE OLIVEIRA', 'ADRIANO BACURAU', '***433869**', '1976-10-27', 55023, 1, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (194, 'ALOIZIO ANTONIO DA SILVA', 'ALOIZIO TUTA', '***655239**', '1964-08-31', 55777, 1, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (195, 'ALTAMIR ANTONIO DOS SANTOS', 'ALTAMIR DA LOTÉRICA', '***524429**', '1970-04-16', 55300, 1, 1, 22, 3);
INSERT INTO public."Candidato" VALUES (196, 'CARLOS ROBERTO VALERIO LUGO', 'CARLOS LUGO', '***725339**', '1964-07-26', 55153, 1, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (197, 'DIONISIO RODRIGUES MARTINS', 'DIONISIO', '***271229**', '1957-11-04', 55511, 1, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (198, 'EDSON LIMA', 'LAMBARI', '***247018**', '1962-12-13', 55000, 1, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (199, 'FELIPE CAMPANHA MENEGHINI', 'FELIPE MENEGHINI', '***219679**', '1989-09-10', 55550, 1, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (200, 'JONIEL PIASSA', 'JONIEL MAGRÃO', '***340209**', '1968-11-10', 55333, 1, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (201, 'JOSE ANGELO SALGUEIRO DA SILVA', 'ANGELO SALGUEIRO', '***771819**', '1965-09-02', 55120, 1, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (202, 'JOSE ANTONIO BACARIM', 'ZÉ DO BAR', '***781079**', '1974-12-10', 55055, 1, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (203, 'NEREU VIDAL CEZAR', 'NEREU VIDAL CEZAR', '***542159**', '1945-08-13', 55678, 1, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (204, 'OSMAR APARECIDO TISEU', 'MAZINHO', '***131579**', '1963-12-15', 55999, 1, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (205, 'SIDNEI OLIVEIRA TELLES FILHO', 'SIDNEI TELLES', '***188559**', '1961-03-16', 55123, 1, 1, 22, 4);
INSERT INTO public."Candidato" VALUES (206, 'VALDIR ZANATTO', 'VALDIR COCAMAGRIL', '***421279**', '1962-04-13', 55100, 1, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (207, 'VANDRÉ FERNANDO FAÉTI ALVARENGA', 'VANDRÉ FERNANDO', '***122329**', '1979-04-26', 55555, 1, 1, 22, 6);
INSERT INTO public."Candidato" VALUES (208, 'EMANUEL MERIZZIO', 'MANU MERIZZIO', '***892689**', '1988-12-18', 45456, 1, 1, 23, 6);
INSERT INTO public."Candidato" VALUES (209, 'GUSTAVO HENRIQUE CARMINATI NAGIB NEME', 'GUSTAVO NEME', '***224529**', '1985-10-22', 45555, 1, 1, 23, 6);
INSERT INTO public."Candidato" VALUES (210, 'JULIANO BUENO BRASIL', 'JULIANO BRASIL', '***927329**', '1981-08-29', 45345, 1, 1, 23, 6);
INSERT INTO public."Candidato" VALUES (211, 'TIAGO VIRGINIO DA SILVA', 'TIAGO EVENTOS', '***625869**', '1985-05-23', 45678, 1, 1, 23, 6);
INSERT INTO public."Candidato" VALUES (212, 'VITOR LUIS COLLI JORDÃO', 'VITOR COLLI', '***139399**', '1982-08-19', 45100, 1, 1, 23, 6);
INSERT INTO public."Candidato" VALUES (213, 'ANTONIO EDUARDO PEREIRA', 'SUB EDUARDO TONHÃO', '***052499**', '1963-02-05', 27193, 1, 1, 24, 6);
INSERT INTO public."Candidato" VALUES (214, 'JAMAL ALI MOHAMAD ABOU FARES', 'DR. JAMAL', '***390409**', '1966-12-25', 17789, 1, 1, 25, 6);
INSERT INTO public."Candidato" VALUES (215, 'HELOISA HELENA GOMES TEIXEIRA DA PAZ', 'HELOÍSA HELENA PAZ', '***818607**', '1962-09-05', 50123, 3, 1, 4, 5);
INSERT INTO public."Candidato" VALUES (216, 'CHRYSTIAN RONALDO SILVA', 'CHRYSTIAN URSO', '***315679**', '1974-07-04', 50999, 1, 1, 4, 5);
INSERT INTO public."Candidato" VALUES (217, 'ÉRIKA LUCIANA ANDREASSY', 'ÉRIKA ANDREASSY', '***700739**', '1973-06-10', 16000, 3, 1, 5, 5);
INSERT INTO public."Candidato" VALUES (218, 'AMANDA REGINA BARBOSA LEMES', 'AMANDA LEMES', '***899159**', '1985-09-24', 13500, 3, 1, 6, 6);
INSERT INTO public."Candidato" VALUES (219, 'IRAIDES FERNANDES', 'IRAIDES BAPTISTONI', '***028919**', '1968-02-26', 13123, 3, 1, 6, 6);
INSERT INTO public."Candidato" VALUES (220, 'MARGARETE LOPES IUNG', 'MARGOT JUNG', '***724059**', '1967-08-29', 13600, 3, 1, 6, 6);
INSERT INTO public."Candidato" VALUES (221, 'VILMA GARCIA DA SILVA', 'PROFESSORA VILMA', '***430059**', '1963-12-27', 13013, 3, 1, 6, 6);
INSERT INTO public."Candidato" VALUES (222, 'AMERICO ANTONIO GAION', 'GAION', '***788969**', '1965-08-12', 13456, 1, 1, 6, 6);
INSERT INTO public."Candidato" VALUES (223, 'CARLOS EMAR MARIUCCI', 'CARLOS MARIUCCI', '***723669**', '1963-07-01', 13313, 1, 1, 6, 3);
INSERT INTO public."Candidato" VALUES (224, 'CICERO BESERRA DE ARAUJO', 'CICERO ARAUJO', '***138939**', '1958-05-20', 13133, 1, 1, 6, 6);
INSERT INTO public."Candidato" VALUES (225, 'CRISTIANO FLORENCIO DA SILVA', 'CRISTIANO FLORENCIO', '***032449**', '1975-12-19', 13900, 1, 1, 6, 6);
INSERT INTO public."Candidato" VALUES (226, 'JOZILEI CALEGARI D OLIVO', 'JOZILEI', '***532759**', '1972-10-21', 13333, 1, 1, 6, 6);
INSERT INTO public."Candidato" VALUES (227, 'MARIO SERGIO VERRI', 'MARIO VERRI', '***780809**', '1966-05-08', 13300, 1, 1, 6, 4);
INSERT INTO public."Candidato" VALUES (228, 'SAULO ERMAS RAMOS', 'SAULO RAMOS', '***779239**', '1970-03-06', 13131, 1, 1, 6, 6);
INSERT INTO public."Candidato" VALUES (229, 'ANTONIA ISEPATO DOS SANTOS', 'TONINHA', '***451089**', '1958-07-22', 14111, 3, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (230, 'ELIZABETH MARISA GOMES DA SILVA SIQUEIRA', 'BETH SIQUEIRA', '***669859**', '1956-11-11', 14133, 3, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (231, 'MARCIA DO ROCIO BITTENCOURT SOCREPPA', 'MARCIA SOCREPPA', '***150889**', '1954-08-20', 14500, 3, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (232, 'MARIA ISABEL NOGUEIRA', 'MARIA ISABEL', '***469879**', '1978-09-08', 14777, 3, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (233, 'MARLENE ZABOLI ARENAS', 'MARLENE ARENAS', '***662329**', '1961-01-13', 14333, 3, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (234, 'MARLI ROSELI ANASTACIO', 'MARLI ANASTACIO', '***303759**', '1972-01-23', 14300, 3, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (235, 'TAIS EMANUELA DE MELO COUTINHO', 'TAIS EMANUELA', '***432019**', '1978-06-02', 14123, 3, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (236, 'AGNALDO ALVES DE FARIA', 'AGNALDO ALVES', '***191529**', '1971-02-14', 14444, 1, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (237, 'AKITO WILLY TAGUCHI', 'WILLY TAGUCHI', '***269649**', '1959-07-01', 14004, 1, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (238, 'CARLOS RUSSO', 'CARLOS RUSSO', '***341069**', '1953-09-20', 14200, 1, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (239, 'FABIO NATANAEL DOS SANTOS', 'FABINHO DO RIBEIRO', '***423669**', '1989-05-31', 14999, 1, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (240, 'FRANCISCO GOMES DOS SANTOS', 'CHICO CAIANA', '***754039**', '1964-05-12', 14700, 1, 1, 26, 4);
INSERT INTO public."Candidato" VALUES (241, 'JOÃO BATISTA DA SILVA', 'DA SILVA', '***086719**', '1970-06-22', 14190, 1, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (242, 'JOCELINO DA PAIXAO', 'JUÇA', '***318189**', '1961-06-24', 14456, 1, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (243, 'JOSE CARLOS DE MACEDO', 'BOY BELEZA JOÍA', '***930159**', '1963-03-14', 14014, 1, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (244, 'LAERCIO NORA RIBEIRO', 'LAERCIO NORA RIBEIRO', '***265609**', '1952-07-12', 14666, 1, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (245, 'LUIZ CARLOS CLOVIS', 'LUIZ DO POSTINHO', '***425549**', '1959-08-02', 14044, 1, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (246, 'LUIZ CARLOS MARIA', 'LUIZ MARIA', '***967349**', '1967-11-09', 14007, 1, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (247, 'LUIZ CARLOS PEREIRA', 'LUIZ PEREIRA', '***106229**', '1959-10-10', 14400, 1, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (248, 'NESTOR EDUARDO DOS SANTOS', 'NESTOR DO OLIMPICO', '***347429**', '1954-06-02', 14900, 1, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (249, 'ODILSON PEREIRA DE PAULA', 'ZEQUINHA DA FARMACIA', '***040579**', '1966-01-02', 14100, 1, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (250, 'SANDRO MARCOS CAMPOS MARTINS', 'PASTOR SANDRO', '***674402**', '1972-02-15', 14000, 1, 1, 26, 6);
INSERT INTO public."Candidato" VALUES (251, 'WILLIAM CHARLES FRANCISCO DE OLIVEIRA', 'WILLIAM GENTIL', '***162129**', '1976-11-30', 14800, 1, 1, 26, 3);
INSERT INTO public."Candidato" VALUES (252, 'MARIA HELENA AVELINO DE MELO', 'MARIA HELENA AVELINO DE MELO', '***611119**', '1969-08-19', 36100, 3, 1, 27, 6);
INSERT INTO public."Candidato" VALUES (253, 'ROSELEY ANTUNES', 'ROSELEY ANTUNES', '***936039**', '1964-11-04', 36000, 3, 1, 27, 6);
INSERT INTO public."Candidato" VALUES (254, 'ROSINEI PORRETASSI PREMERO', 'ROSINEI PREMERO', '***557979**', '1966-11-06', 36361, 3, 1, 27, 6);
INSERT INTO public."Candidato" VALUES (255, 'OLAVO LUIS DA CRUZ', 'BEBEZÃO', '***948559**', '1967-07-07', 36036, 1, 1, 27, 6);
INSERT INTO public."Candidato" VALUES (256, 'WANDERLEI BERTI', 'WANDERLEI DA COSTELARIA', '***959399**', '1957-05-29', 36123, 1, 1, 27, 6);
INSERT INTO public."Candidato" VALUES (257, 'ALCIBIADES ALVES DE MOURA', 'PROFESSOR ALCIBIADES', '***598769**', '1948-09-05', 70123, 1, 1, 7, 5);
INSERT INTO public."Candidato" VALUES (258, 'MARCUS ANTONIO FINIZOLA', 'CEARÁ', '***979569**', '1964-05-02', 19900, 1, 1, 28, 6);
INSERT INTO public."Candidato" VALUES (259, 'ANA LUCIA GOMES', 'ANA LUCIA GOMES', '***687998**', '1970-09-25', 43433, 3, 1, 29, 6);
INSERT INTO public."Candidato" VALUES (260, 'LUZINEIDE MARCELINO DE SOUZA', 'LUZI', '***255309**', '1961-12-26', 43024, 3, 1, 29, 6);
INSERT INTO public."Candidato" VALUES (261, 'CRISTIANO NIERO ASTRATH', 'PROFESSOR NIERO', '***426959**', '1982-08-09', 43993, 1, 1, 29, 6);
INSERT INTO public."Candidato" VALUES (262, 'EDERLEI RIBEIRO ALKAMIM', 'EDERLEI ALKAMIM', '***564329**', '1969-05-28', 43333, 1, 1, 29, 6);
INSERT INTO public."Candidato" VALUES (263, 'GERALDO TRABUCO', 'PROF. GERALDO TRABUCO', '***237259**', '1957-02-15', 43053, 1, 1, 29, 6);
INSERT INTO public."Candidato" VALUES (264, 'GILBERTO NOGUEIRA CONSTANTINOV', 'GILBERTO DA FARMACIA', '***076389**', '1969-07-15', 43444, 1, 1, 29, 6);
INSERT INTO public."Candidato" VALUES (265, 'HOMERO FIGUEIREDO LIMA E MARCHESE', 'HOMERO MARCHESE', '***976809**', '1983-07-14', 43123, 1, 1, 29, 4);
INSERT INTO public."Candidato" VALUES (266, 'JEAN CARLOS MARQUES SILVA', 'JEAN MARQUES', '***549699**', '1984-05-05', 43043, 1, 1, 29, 3);
INSERT INTO public."Candidato" VALUES (267, 'VALDECIR ANDRIUCI SANTANA', 'VALDECIR SANTANA', '***327809**', '1968-06-13', 43007, 1, 1, 29, 6);
INSERT INTO public."Candidato" VALUES (268, 'EMILIA APARECIDA DIAS RODRIGUES', 'EMILIA DIAS POLACA', '***499889**', '1961-03-21', 18018, 3, 1, 8, 5);
INSERT INTO public."Candidato" VALUES (269, 'FABIO MORAES', 'FABIO MORAES', '***891789**', '1975-10-21', 18555, 1, 1, 8, 5);
INSERT INTO public."Candidato" VALUES (270, 'SAULO GASPAR DE OLIVEIRA', 'SAULO GASPAR', '***409209**', '1988-06-11', 18000, 1, 1, 8, 5);
INSERT INTO public."Candidato" VALUES (271, 'LUCIANO MARCELO SIMÔES DE BRITO', 'LUCIANO BRITO', '***171589**', '1973-09-17', 77123, 1, 1, 30, 5);
INSERT INTO public."Candidato" VALUES (272, 'FRANCISCO FAVOTO', 'FAVOTO', '***788549**', '1952-01-11', 40, 1, 1, 31, 5);
INSERT INTO public."Candidato" VALUES (273, 'ANA LUCIA RODRIGUES', 'ANA LUCIA', '***655419**', '1962-09-24', 13, 3, 1, 9, 5);
INSERT INTO public."Candidato" VALUES (274, 'ELIZABETH AKEMI UETA NISHIMORI', 'AKEMI NISHIMORI', '***955409**', '1956-10-13', 11, 3, 1, 16, 5);
INSERT INTO public."Candidato" VALUES (275, 'ELIZABETH AKEMI UETA NISHIMORI', 'AKEMI NISHIMORI', '***955409**', '1956-10-13', 11, 3, 1, 16, 2);
INSERT INTO public."Candidato" VALUES (276, 'JOSE MAURO NONATO', 'BOMBEIRO NONATO', '***354879**', '1965-11-30', 50, 1, 1, 4, 5);
INSERT INTO public."Candidato" VALUES (277, 'PHILLIP DE LIMA NATAL', 'PHILL NATAL', '***813788**', '1986-02-21', 16, 1, 1, 5, 5);
INSERT INTO public."Candidato" VALUES (278, 'CLÓVIS PONTES', 'CLÓVIS PONTES', '***816499**', '1966-10-17', 70, 1, 1, 7, 5);
INSERT INTO public."Candidato" VALUES (279, 'EDSON RIBEIRO SCABORA', 'EDSON SCABORA', '***951819**', '1962-08-15', 12, 1, 1, 29, 1);
INSERT INTO public."Candidato" VALUES (280, 'EDSON RIBEIRO SCABORA', 'EDSON SCABORA', '***951819**', '1962-08-15', 12, 1, 1, 29, 2);
INSERT INTO public."Candidato" VALUES (281, 'ALINE GABRIELA PESCAROLI CASADO', 'ALINE CASADO', '***912898**', '1980-11-04', 18, 3, 1, 8, 5);


--
-- TOC entry 4877 (class 0 OID 16392)
-- Dependencies: 219
-- Data for Name: Cargo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Cargo" VALUES (1, 'Prefeito');
INSERT INTO public."Cargo" VALUES (2, 'Vereador');
INSERT INTO public."Cargo" VALUES (3, 'Vice-prefeito');


--
-- TOC entry 4879 (class 0 OID 16396)
-- Dependencies: 221
-- Data for Name: Eleicao; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Eleicao" VALUES (1, 1, 2016, 1);


--
-- TOC entry 4880 (class 0 OID 16399)
-- Dependencies: 222
-- Data for Name: EleicaoCandidato; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."EleicaoCandidato" VALUES (1, 1, 1);
INSERT INTO public."EleicaoCandidato" VALUES (2, 1, 2);
INSERT INTO public."EleicaoCandidato" VALUES (3, 1, 3);
INSERT INTO public."EleicaoCandidato" VALUES (4, 1, 4);
INSERT INTO public."EleicaoCandidato" VALUES (5, 1, 5);
INSERT INTO public."EleicaoCandidato" VALUES (6, 1, 6);
INSERT INTO public."EleicaoCandidato" VALUES (7, 1, 7);
INSERT INTO public."EleicaoCandidato" VALUES (8, 1, 8);
INSERT INTO public."EleicaoCandidato" VALUES (9, 1, 9);
INSERT INTO public."EleicaoCandidato" VALUES (10, 1, 10);
INSERT INTO public."EleicaoCandidato" VALUES (11, 1, 11);
INSERT INTO public."EleicaoCandidato" VALUES (12, 1, 12);
INSERT INTO public."EleicaoCandidato" VALUES (13, 1, 13);
INSERT INTO public."EleicaoCandidato" VALUES (14, 1, 14);
INSERT INTO public."EleicaoCandidato" VALUES (15, 1, 15);
INSERT INTO public."EleicaoCandidato" VALUES (16, 1, 16);
INSERT INTO public."EleicaoCandidato" VALUES (17, 1, 17);
INSERT INTO public."EleicaoCandidato" VALUES (18, 1, 18);
INSERT INTO public."EleicaoCandidato" VALUES (19, 1, 19);
INSERT INTO public."EleicaoCandidato" VALUES (20, 1, 20);
INSERT INTO public."EleicaoCandidato" VALUES (21, 1, 21);
INSERT INTO public."EleicaoCandidato" VALUES (22, 1, 22);
INSERT INTO public."EleicaoCandidato" VALUES (23, 1, 23);
INSERT INTO public."EleicaoCandidato" VALUES (24, 1, 24);
INSERT INTO public."EleicaoCandidato" VALUES (25, 1, 25);
INSERT INTO public."EleicaoCandidato" VALUES (26, 1, 26);
INSERT INTO public."EleicaoCandidato" VALUES (27, 1, 27);
INSERT INTO public."EleicaoCandidato" VALUES (28, 1, 28);
INSERT INTO public."EleicaoCandidato" VALUES (29, 1, 29);
INSERT INTO public."EleicaoCandidato" VALUES (30, 1, 30);
INSERT INTO public."EleicaoCandidato" VALUES (31, 1, 31);
INSERT INTO public."EleicaoCandidato" VALUES (32, 1, 32);
INSERT INTO public."EleicaoCandidato" VALUES (33, 1, 33);
INSERT INTO public."EleicaoCandidato" VALUES (34, 1, 34);
INSERT INTO public."EleicaoCandidato" VALUES (35, 1, 35);
INSERT INTO public."EleicaoCandidato" VALUES (36, 1, 36);
INSERT INTO public."EleicaoCandidato" VALUES (37, 1, 37);
INSERT INTO public."EleicaoCandidato" VALUES (38, 1, 38);
INSERT INTO public."EleicaoCandidato" VALUES (39, 1, 39);
INSERT INTO public."EleicaoCandidato" VALUES (40, 1, 40);
INSERT INTO public."EleicaoCandidato" VALUES (41, 1, 41);
INSERT INTO public."EleicaoCandidato" VALUES (42, 1, 42);
INSERT INTO public."EleicaoCandidato" VALUES (43, 1, 43);
INSERT INTO public."EleicaoCandidato" VALUES (44, 1, 44);
INSERT INTO public."EleicaoCandidato" VALUES (45, 1, 45);
INSERT INTO public."EleicaoCandidato" VALUES (46, 1, 46);
INSERT INTO public."EleicaoCandidato" VALUES (47, 1, 47);
INSERT INTO public."EleicaoCandidato" VALUES (48, 1, 48);
INSERT INTO public."EleicaoCandidato" VALUES (49, 1, 49);
INSERT INTO public."EleicaoCandidato" VALUES (50, 1, 50);
INSERT INTO public."EleicaoCandidato" VALUES (51, 1, 51);
INSERT INTO public."EleicaoCandidato" VALUES (52, 1, 52);
INSERT INTO public."EleicaoCandidato" VALUES (53, 1, 53);
INSERT INTO public."EleicaoCandidato" VALUES (54, 1, 54);
INSERT INTO public."EleicaoCandidato" VALUES (55, 1, 55);
INSERT INTO public."EleicaoCandidato" VALUES (56, 1, 56);
INSERT INTO public."EleicaoCandidato" VALUES (57, 1, 57);
INSERT INTO public."EleicaoCandidato" VALUES (58, 1, 58);
INSERT INTO public."EleicaoCandidato" VALUES (59, 1, 59);
INSERT INTO public."EleicaoCandidato" VALUES (60, 1, 60);
INSERT INTO public."EleicaoCandidato" VALUES (61, 1, 61);
INSERT INTO public."EleicaoCandidato" VALUES (62, 1, 62);
INSERT INTO public."EleicaoCandidato" VALUES (63, 1, 63);
INSERT INTO public."EleicaoCandidato" VALUES (64, 1, 64);
INSERT INTO public."EleicaoCandidato" VALUES (65, 1, 65);
INSERT INTO public."EleicaoCandidato" VALUES (66, 1, 66);
INSERT INTO public."EleicaoCandidato" VALUES (67, 1, 67);
INSERT INTO public."EleicaoCandidato" VALUES (68, 1, 68);
INSERT INTO public."EleicaoCandidato" VALUES (69, 1, 69);
INSERT INTO public."EleicaoCandidato" VALUES (70, 1, 70);
INSERT INTO public."EleicaoCandidato" VALUES (71, 1, 71);
INSERT INTO public."EleicaoCandidato" VALUES (72, 1, 72);
INSERT INTO public."EleicaoCandidato" VALUES (73, 1, 73);
INSERT INTO public."EleicaoCandidato" VALUES (74, 1, 74);
INSERT INTO public."EleicaoCandidato" VALUES (75, 1, 75);
INSERT INTO public."EleicaoCandidato" VALUES (76, 1, 76);
INSERT INTO public."EleicaoCandidato" VALUES (77, 1, 77);
INSERT INTO public."EleicaoCandidato" VALUES (78, 1, 78);
INSERT INTO public."EleicaoCandidato" VALUES (79, 1, 79);
INSERT INTO public."EleicaoCandidato" VALUES (80, 1, 80);
INSERT INTO public."EleicaoCandidato" VALUES (81, 1, 81);
INSERT INTO public."EleicaoCandidato" VALUES (82, 1, 82);
INSERT INTO public."EleicaoCandidato" VALUES (83, 1, 83);
INSERT INTO public."EleicaoCandidato" VALUES (84, 1, 84);
INSERT INTO public."EleicaoCandidato" VALUES (85, 1, 85);
INSERT INTO public."EleicaoCandidato" VALUES (86, 1, 86);
INSERT INTO public."EleicaoCandidato" VALUES (87, 1, 87);
INSERT INTO public."EleicaoCandidato" VALUES (88, 1, 88);
INSERT INTO public."EleicaoCandidato" VALUES (89, 1, 89);
INSERT INTO public."EleicaoCandidato" VALUES (90, 1, 90);
INSERT INTO public."EleicaoCandidato" VALUES (91, 1, 91);
INSERT INTO public."EleicaoCandidato" VALUES (92, 1, 92);
INSERT INTO public."EleicaoCandidato" VALUES (93, 1, 93);
INSERT INTO public."EleicaoCandidato" VALUES (94, 1, 94);
INSERT INTO public."EleicaoCandidato" VALUES (95, 1, 95);
INSERT INTO public."EleicaoCandidato" VALUES (96, 1, 96);
INSERT INTO public."EleicaoCandidato" VALUES (97, 1, 97);
INSERT INTO public."EleicaoCandidato" VALUES (98, 1, 98);
INSERT INTO public."EleicaoCandidato" VALUES (99, 1, 99);
INSERT INTO public."EleicaoCandidato" VALUES (100, 1, 100);
INSERT INTO public."EleicaoCandidato" VALUES (101, 1, 101);
INSERT INTO public."EleicaoCandidato" VALUES (102, 1, 102);
INSERT INTO public."EleicaoCandidato" VALUES (103, 1, 103);
INSERT INTO public."EleicaoCandidato" VALUES (104, 1, 104);
INSERT INTO public."EleicaoCandidato" VALUES (105, 1, 105);
INSERT INTO public."EleicaoCandidato" VALUES (106, 1, 106);
INSERT INTO public."EleicaoCandidato" VALUES (107, 1, 107);
INSERT INTO public."EleicaoCandidato" VALUES (108, 1, 108);
INSERT INTO public."EleicaoCandidato" VALUES (109, 1, 109);
INSERT INTO public."EleicaoCandidato" VALUES (110, 1, 110);
INSERT INTO public."EleicaoCandidato" VALUES (111, 1, 111);
INSERT INTO public."EleicaoCandidato" VALUES (112, 1, 112);
INSERT INTO public."EleicaoCandidato" VALUES (113, 1, 113);
INSERT INTO public."EleicaoCandidato" VALUES (114, 1, 114);
INSERT INTO public."EleicaoCandidato" VALUES (115, 1, 115);
INSERT INTO public."EleicaoCandidato" VALUES (116, 1, 116);
INSERT INTO public."EleicaoCandidato" VALUES (117, 1, 117);
INSERT INTO public."EleicaoCandidato" VALUES (118, 1, 118);
INSERT INTO public."EleicaoCandidato" VALUES (119, 1, 119);
INSERT INTO public."EleicaoCandidato" VALUES (120, 1, 120);
INSERT INTO public."EleicaoCandidato" VALUES (121, 1, 121);
INSERT INTO public."EleicaoCandidato" VALUES (122, 1, 122);
INSERT INTO public."EleicaoCandidato" VALUES (123, 1, 123);
INSERT INTO public."EleicaoCandidato" VALUES (124, 1, 124);
INSERT INTO public."EleicaoCandidato" VALUES (125, 1, 125);
INSERT INTO public."EleicaoCandidato" VALUES (126, 1, 126);
INSERT INTO public."EleicaoCandidato" VALUES (127, 1, 127);
INSERT INTO public."EleicaoCandidato" VALUES (128, 1, 128);
INSERT INTO public."EleicaoCandidato" VALUES (129, 1, 129);
INSERT INTO public."EleicaoCandidato" VALUES (130, 1, 130);
INSERT INTO public."EleicaoCandidato" VALUES (131, 1, 131);
INSERT INTO public."EleicaoCandidato" VALUES (132, 1, 132);
INSERT INTO public."EleicaoCandidato" VALUES (133, 1, 133);
INSERT INTO public."EleicaoCandidato" VALUES (134, 1, 134);
INSERT INTO public."EleicaoCandidato" VALUES (135, 1, 135);
INSERT INTO public."EleicaoCandidato" VALUES (136, 1, 136);
INSERT INTO public."EleicaoCandidato" VALUES (137, 1, 137);
INSERT INTO public."EleicaoCandidato" VALUES (138, 1, 138);
INSERT INTO public."EleicaoCandidato" VALUES (139, 1, 139);
INSERT INTO public."EleicaoCandidato" VALUES (140, 1, 140);
INSERT INTO public."EleicaoCandidato" VALUES (141, 1, 141);
INSERT INTO public."EleicaoCandidato" VALUES (142, 1, 142);
INSERT INTO public."EleicaoCandidato" VALUES (143, 1, 143);
INSERT INTO public."EleicaoCandidato" VALUES (144, 1, 144);
INSERT INTO public."EleicaoCandidato" VALUES (145, 1, 145);
INSERT INTO public."EleicaoCandidato" VALUES (146, 1, 146);
INSERT INTO public."EleicaoCandidato" VALUES (147, 1, 147);
INSERT INTO public."EleicaoCandidato" VALUES (148, 1, 148);
INSERT INTO public."EleicaoCandidato" VALUES (149, 1, 149);
INSERT INTO public."EleicaoCandidato" VALUES (150, 1, 150);
INSERT INTO public."EleicaoCandidato" VALUES (151, 1, 151);
INSERT INTO public."EleicaoCandidato" VALUES (152, 1, 152);
INSERT INTO public."EleicaoCandidato" VALUES (153, 1, 153);
INSERT INTO public."EleicaoCandidato" VALUES (154, 1, 154);
INSERT INTO public."EleicaoCandidato" VALUES (155, 1, 155);
INSERT INTO public."EleicaoCandidato" VALUES (156, 1, 156);
INSERT INTO public."EleicaoCandidato" VALUES (157, 1, 157);
INSERT INTO public."EleicaoCandidato" VALUES (158, 1, 158);
INSERT INTO public."EleicaoCandidato" VALUES (159, 1, 159);
INSERT INTO public."EleicaoCandidato" VALUES (160, 1, 160);
INSERT INTO public."EleicaoCandidato" VALUES (161, 1, 161);
INSERT INTO public."EleicaoCandidato" VALUES (162, 1, 162);
INSERT INTO public."EleicaoCandidato" VALUES (163, 1, 163);
INSERT INTO public."EleicaoCandidato" VALUES (164, 1, 164);
INSERT INTO public."EleicaoCandidato" VALUES (165, 1, 165);
INSERT INTO public."EleicaoCandidato" VALUES (166, 1, 166);
INSERT INTO public."EleicaoCandidato" VALUES (167, 1, 167);
INSERT INTO public."EleicaoCandidato" VALUES (168, 1, 168);
INSERT INTO public."EleicaoCandidato" VALUES (169, 1, 169);
INSERT INTO public."EleicaoCandidato" VALUES (170, 1, 170);
INSERT INTO public."EleicaoCandidato" VALUES (171, 1, 171);
INSERT INTO public."EleicaoCandidato" VALUES (172, 1, 172);
INSERT INTO public."EleicaoCandidato" VALUES (173, 1, 173);
INSERT INTO public."EleicaoCandidato" VALUES (174, 1, 174);
INSERT INTO public."EleicaoCandidato" VALUES (175, 1, 175);
INSERT INTO public."EleicaoCandidato" VALUES (176, 1, 176);
INSERT INTO public."EleicaoCandidato" VALUES (177, 1, 177);
INSERT INTO public."EleicaoCandidato" VALUES (178, 1, 178);
INSERT INTO public."EleicaoCandidato" VALUES (179, 1, 179);
INSERT INTO public."EleicaoCandidato" VALUES (180, 1, 180);
INSERT INTO public."EleicaoCandidato" VALUES (181, 1, 181);
INSERT INTO public."EleicaoCandidato" VALUES (182, 1, 182);
INSERT INTO public."EleicaoCandidato" VALUES (183, 1, 183);
INSERT INTO public."EleicaoCandidato" VALUES (184, 1, 184);
INSERT INTO public."EleicaoCandidato" VALUES (185, 1, 185);
INSERT INTO public."EleicaoCandidato" VALUES (186, 1, 186);
INSERT INTO public."EleicaoCandidato" VALUES (187, 1, 187);
INSERT INTO public."EleicaoCandidato" VALUES (188, 1, 188);
INSERT INTO public."EleicaoCandidato" VALUES (189, 1, 189);
INSERT INTO public."EleicaoCandidato" VALUES (190, 1, 190);
INSERT INTO public."EleicaoCandidato" VALUES (191, 1, 191);
INSERT INTO public."EleicaoCandidato" VALUES (192, 1, 192);
INSERT INTO public."EleicaoCandidato" VALUES (193, 1, 193);
INSERT INTO public."EleicaoCandidato" VALUES (194, 1, 194);
INSERT INTO public."EleicaoCandidato" VALUES (195, 1, 195);
INSERT INTO public."EleicaoCandidato" VALUES (196, 1, 196);
INSERT INTO public."EleicaoCandidato" VALUES (197, 1, 197);
INSERT INTO public."EleicaoCandidato" VALUES (198, 1, 198);
INSERT INTO public."EleicaoCandidato" VALUES (199, 1, 199);
INSERT INTO public."EleicaoCandidato" VALUES (200, 1, 200);
INSERT INTO public."EleicaoCandidato" VALUES (201, 1, 201);
INSERT INTO public."EleicaoCandidato" VALUES (202, 1, 202);
INSERT INTO public."EleicaoCandidato" VALUES (203, 1, 203);
INSERT INTO public."EleicaoCandidato" VALUES (204, 1, 204);
INSERT INTO public."EleicaoCandidato" VALUES (205, 1, 205);
INSERT INTO public."EleicaoCandidato" VALUES (206, 1, 206);
INSERT INTO public."EleicaoCandidato" VALUES (207, 1, 207);
INSERT INTO public."EleicaoCandidato" VALUES (208, 1, 208);
INSERT INTO public."EleicaoCandidato" VALUES (209, 1, 209);
INSERT INTO public."EleicaoCandidato" VALUES (210, 1, 210);
INSERT INTO public."EleicaoCandidato" VALUES (211, 1, 211);
INSERT INTO public."EleicaoCandidato" VALUES (212, 1, 212);
INSERT INTO public."EleicaoCandidato" VALUES (213, 1, 213);
INSERT INTO public."EleicaoCandidato" VALUES (214, 1, 214);
INSERT INTO public."EleicaoCandidato" VALUES (215, 1, 215);
INSERT INTO public."EleicaoCandidato" VALUES (216, 1, 216);
INSERT INTO public."EleicaoCandidato" VALUES (217, 1, 217);
INSERT INTO public."EleicaoCandidato" VALUES (218, 1, 218);
INSERT INTO public."EleicaoCandidato" VALUES (219, 1, 219);
INSERT INTO public."EleicaoCandidato" VALUES (220, 1, 220);
INSERT INTO public."EleicaoCandidato" VALUES (221, 1, 221);
INSERT INTO public."EleicaoCandidato" VALUES (222, 1, 222);
INSERT INTO public."EleicaoCandidato" VALUES (223, 1, 223);
INSERT INTO public."EleicaoCandidato" VALUES (224, 1, 224);
INSERT INTO public."EleicaoCandidato" VALUES (225, 1, 225);
INSERT INTO public."EleicaoCandidato" VALUES (226, 1, 226);
INSERT INTO public."EleicaoCandidato" VALUES (227, 1, 227);
INSERT INTO public."EleicaoCandidato" VALUES (228, 1, 228);
INSERT INTO public."EleicaoCandidato" VALUES (229, 1, 229);
INSERT INTO public."EleicaoCandidato" VALUES (230, 1, 230);
INSERT INTO public."EleicaoCandidato" VALUES (231, 1, 231);
INSERT INTO public."EleicaoCandidato" VALUES (232, 1, 232);
INSERT INTO public."EleicaoCandidato" VALUES (233, 1, 233);
INSERT INTO public."EleicaoCandidato" VALUES (234, 1, 234);
INSERT INTO public."EleicaoCandidato" VALUES (235, 1, 235);
INSERT INTO public."EleicaoCandidato" VALUES (236, 1, 236);
INSERT INTO public."EleicaoCandidato" VALUES (237, 1, 237);
INSERT INTO public."EleicaoCandidato" VALUES (238, 1, 238);
INSERT INTO public."EleicaoCandidato" VALUES (239, 1, 239);
INSERT INTO public."EleicaoCandidato" VALUES (240, 1, 240);
INSERT INTO public."EleicaoCandidato" VALUES (241, 1, 241);
INSERT INTO public."EleicaoCandidato" VALUES (242, 1, 242);
INSERT INTO public."EleicaoCandidato" VALUES (243, 1, 243);
INSERT INTO public."EleicaoCandidato" VALUES (244, 1, 244);
INSERT INTO public."EleicaoCandidato" VALUES (245, 1, 245);
INSERT INTO public."EleicaoCandidato" VALUES (246, 1, 246);
INSERT INTO public."EleicaoCandidato" VALUES (247, 1, 247);
INSERT INTO public."EleicaoCandidato" VALUES (248, 1, 248);
INSERT INTO public."EleicaoCandidato" VALUES (249, 1, 249);
INSERT INTO public."EleicaoCandidato" VALUES (250, 1, 250);
INSERT INTO public."EleicaoCandidato" VALUES (251, 1, 251);
INSERT INTO public."EleicaoCandidato" VALUES (252, 1, 252);
INSERT INTO public."EleicaoCandidato" VALUES (253, 1, 253);
INSERT INTO public."EleicaoCandidato" VALUES (254, 1, 254);
INSERT INTO public."EleicaoCandidato" VALUES (255, 1, 255);
INSERT INTO public."EleicaoCandidato" VALUES (256, 1, 256);
INSERT INTO public."EleicaoCandidato" VALUES (257, 1, 257);
INSERT INTO public."EleicaoCandidato" VALUES (258, 1, 258);
INSERT INTO public."EleicaoCandidato" VALUES (259, 1, 259);
INSERT INTO public."EleicaoCandidato" VALUES (260, 1, 260);
INSERT INTO public."EleicaoCandidato" VALUES (261, 1, 261);
INSERT INTO public."EleicaoCandidato" VALUES (262, 1, 262);
INSERT INTO public."EleicaoCandidato" VALUES (263, 1, 263);
INSERT INTO public."EleicaoCandidato" VALUES (264, 1, 264);
INSERT INTO public."EleicaoCandidato" VALUES (265, 1, 265);
INSERT INTO public."EleicaoCandidato" VALUES (266, 1, 266);
INSERT INTO public."EleicaoCandidato" VALUES (267, 1, 267);
INSERT INTO public."EleicaoCandidato" VALUES (268, 1, 268);
INSERT INTO public."EleicaoCandidato" VALUES (269, 1, 269);
INSERT INTO public."EleicaoCandidato" VALUES (270, 1, 270);
INSERT INTO public."EleicaoCandidato" VALUES (271, 1, 271);
INSERT INTO public."EleicaoCandidato" VALUES (272, 1, 272);
INSERT INTO public."EleicaoCandidato" VALUES (273, 1, 273);
INSERT INTO public."EleicaoCandidato" VALUES (274, 1, 274);
INSERT INTO public."EleicaoCandidato" VALUES (275, 1, 275);
INSERT INTO public."EleicaoCandidato" VALUES (276, 1, 276);
INSERT INTO public."EleicaoCandidato" VALUES (277, 1, 277);
INSERT INTO public."EleicaoCandidato" VALUES (278, 1, 278);
INSERT INTO public."EleicaoCandidato" VALUES (279, 1, 279);
INSERT INTO public."EleicaoCandidato" VALUES (280, 1, 280);
INSERT INTO public."EleicaoCandidato" VALUES (281, 1, 281);


--
-- TOC entry 4883 (class 0 OID 16404)
-- Dependencies: 225
-- Data for Name: Genero; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Genero" VALUES (1, 'Masculino');
INSERT INTO public."Genero" VALUES (3, 'Feminino');


--
-- TOC entry 4885 (class 0 OID 16408)
-- Dependencies: 227
-- Data for Name: Local; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Local" VALUES (1, 'Maringá', 'PR');


--
-- TOC entry 4887 (class 0 OID 16412)
-- Dependencies: 229
-- Data for Name: Partido; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Partido" VALUES (1, 'PDT');
INSERT INTO public."Partido" VALUES (2, 'PP');
INSERT INTO public."Partido" VALUES (3, 'PSB');
INSERT INTO public."Partido" VALUES (4, 'PSOL');
INSERT INTO public."Partido" VALUES (5, 'PSTU');
INSERT INTO public."Partido" VALUES (6, 'PT');
INSERT INTO public."Partido" VALUES (7, 'PT do B');
INSERT INTO public."Partido" VALUES (8, 'REDE');
INSERT INTO public."Partido" VALUES (9, 'PC do B');
INSERT INTO public."Partido" VALUES (10, 'PHS');
INSERT INTO public."Partido" VALUES (11, 'PMB');
INSERT INTO public."Partido" VALUES (12, 'PMDB');
INSERT INTO public."Partido" VALUES (13, 'PMN');
INSERT INTO public."Partido" VALUES (14, 'PPL');
INSERT INTO public."Partido" VALUES (15, 'PPS');
INSERT INTO public."Partido" VALUES (16, 'PR');
INSERT INTO public."Partido" VALUES (17, 'PRB');
INSERT INTO public."Partido" VALUES (18, 'PROS');
INSERT INTO public."Partido" VALUES (19, 'PRP');
INSERT INTO public."Partido" VALUES (20, 'PRTB');
INSERT INTO public."Partido" VALUES (21, 'PSC');
INSERT INTO public."Partido" VALUES (22, 'PSD');
INSERT INTO public."Partido" VALUES (23, 'PSDB');
INSERT INTO public."Partido" VALUES (24, 'PSDC');
INSERT INTO public."Partido" VALUES (25, 'PSL');
INSERT INTO public."Partido" VALUES (26, 'PTB');
INSERT INTO public."Partido" VALUES (27, 'PTC');
INSERT INTO public."Partido" VALUES (28, 'PTN');
INSERT INTO public."Partido" VALUES (29, 'PV');
INSERT INTO public."Partido" VALUES (30, 'SD');
INSERT INTO public."Partido" VALUES (31, 'DEM');


--
-- TOC entry 4889 (class 0 OID 16416)
-- Dependencies: 231
-- Data for Name: SituacaoEleitoral; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."SituacaoEleitoral" VALUES (1, 'Deferido');
INSERT INTO public."SituacaoEleitoral" VALUES (2, 'Renúncia');


--
-- TOC entry 4891 (class 0 OID 16420)
-- Dependencies: 233
-- Data for Name: SituacaoTurno; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."SituacaoTurno" VALUES (1, 'Eleito');
INSERT INTO public."SituacaoTurno" VALUES (2, '2º Turno');
INSERT INTO public."SituacaoTurno" VALUES (3, 'Eleito por Média');
INSERT INTO public."SituacaoTurno" VALUES (4, 'Eleito por QP');
INSERT INTO public."SituacaoTurno" VALUES (5, 'Não Eleito');
INSERT INTO public."SituacaoTurno" VALUES (6, 'Suplente');


--
-- TOC entry 4907 (class 0 OID 0)
-- Dependencies: 218
-- Name: Candidato_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Candidato_Id_seq"', 281, true);


--
-- TOC entry 4908 (class 0 OID 0)
-- Dependencies: 220
-- Name: Cargo_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Cargo_Id_seq"', 3, true);


--
-- TOC entry 4909 (class 0 OID 0)
-- Dependencies: 223
-- Name: Eleicao_Candidato_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Eleicao_Candidato_Id_seq"', 281, true);


--
-- TOC entry 4910 (class 0 OID 0)
-- Dependencies: 224
-- Name: Eleicao_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Eleicao_Id_seq"', 1, true);


--
-- TOC entry 4911 (class 0 OID 0)
-- Dependencies: 226
-- Name: Genero_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Genero_Id_seq"', 3, true);


--
-- TOC entry 4912 (class 0 OID 0)
-- Dependencies: 228
-- Name: Local_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Local_Id_seq"', 1, true);


--
-- TOC entry 4913 (class 0 OID 0)
-- Dependencies: 230
-- Name: Partido_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Partido_Id_seq"', 155, true);


--
-- TOC entry 4914 (class 0 OID 0)
-- Dependencies: 232
-- Name: SituacaoEleitoral_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SituacaoEleitoral_Id_seq"', 2, true);


--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 234
-- Name: SituacaoTurno_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SituacaoTurno_Id_seq"', 6, true);


--
-- TOC entry 4691 (class 2606 OID 16434)
-- Name: Candidato Candidato_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Candidato"
    ADD CONSTRAINT "Candidato_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4693 (class 2606 OID 16436)
-- Name: Cargo Cargo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cargo"
    ADD CONSTRAINT "Cargo_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4701 (class 2606 OID 16438)
-- Name: EleicaoCandidato Eleicao_Candidato_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EleicaoCandidato"
    ADD CONSTRAINT "Eleicao_Candidato_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4697 (class 2606 OID 16440)
-- Name: Eleicao Eleicao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Eleicao"
    ADD CONSTRAINT "Eleicao_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4705 (class 2606 OID 16442)
-- Name: Genero Genero_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Genero"
    ADD CONSTRAINT "Genero_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4709 (class 2606 OID 16444)
-- Name: Local Local_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Local"
    ADD CONSTRAINT "Local_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4713 (class 2606 OID 16446)
-- Name: Partido Partido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Partido"
    ADD CONSTRAINT "Partido_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4717 (class 2606 OID 16448)
-- Name: SituacaoEleitoral SituacaoEleitoral_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SituacaoEleitoral"
    ADD CONSTRAINT "SituacaoEleitoral_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4721 (class 2606 OID 16450)
-- Name: SituacaoTurno SituacaoTurno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SituacaoTurno"
    ADD CONSTRAINT "SituacaoTurno_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4695 (class 2606 OID 16452)
-- Name: Cargo U_Cargo_Nome; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cargo"
    ADD CONSTRAINT "U_Cargo_Nome" UNIQUE ("Nome");


--
-- TOC entry 4699 (class 2606 OID 16454)
-- Name: Eleicao U_Eleicao_Campos; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Eleicao"
    ADD CONSTRAINT "U_Eleicao_Campos" UNIQUE ("Turno", "Ano", "LocalId");


--
-- TOC entry 4703 (class 2606 OID 16456)
-- Name: EleicaoCandidato U_Eleicao_Candidato; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EleicaoCandidato"
    ADD CONSTRAINT "U_Eleicao_Candidato" UNIQUE ("EleicaoId", "CandidatoId");


--
-- TOC entry 4707 (class 2606 OID 16458)
-- Name: Genero U_Genero_Nome; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Genero"
    ADD CONSTRAINT "U_Genero_Nome" UNIQUE ("Nome");


--
-- TOC entry 4711 (class 2606 OID 16460)
-- Name: Local U_Local_CidadeEstado; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Local"
    ADD CONSTRAINT "U_Local_CidadeEstado" UNIQUE ("Cidade", "Estado");


--
-- TOC entry 4715 (class 2606 OID 16462)
-- Name: Partido U_Partido_Sigla; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Partido"
    ADD CONSTRAINT "U_Partido_Sigla" UNIQUE ("Sigla");


--
-- TOC entry 4719 (class 2606 OID 16464)
-- Name: SituacaoEleitoral U_SituacaoEleitoral_Nome; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SituacaoEleitoral"
    ADD CONSTRAINT "U_SituacaoEleitoral_Nome" UNIQUE ("Nome");


--
-- TOC entry 4723 (class 2606 OID 16466)
-- Name: SituacaoTurno U_SituacaoTurno_Nome; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SituacaoTurno"
    ADD CONSTRAINT "U_SituacaoTurno_Nome" UNIQUE ("Nome");


--
-- TOC entry 4724 (class 2606 OID 16467)
-- Name: Candidato FK_Candidato_Genero; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Candidato"
    ADD CONSTRAINT "FK_Candidato_Genero" FOREIGN KEY ("GeneroId") REFERENCES public."Genero"("Id") NOT VALID;


--
-- TOC entry 4725 (class 2606 OID 16472)
-- Name: Candidato FK_Candidato_Partido; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Candidato"
    ADD CONSTRAINT "FK_Candidato_Partido" FOREIGN KEY ("PartidoId") REFERENCES public."Partido"("Id") NOT VALID;


--
-- TOC entry 4726 (class 2606 OID 16477)
-- Name: Candidato FK_Candidato_SituacaoEleitoral; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Candidato"
    ADD CONSTRAINT "FK_Candidato_SituacaoEleitoral" FOREIGN KEY ("SituacaoEleitoralId") REFERENCES public."SituacaoEleitoral"("Id") NOT VALID;


--
-- TOC entry 4727 (class 2606 OID 16482)
-- Name: Candidato FK_Candidato_SituacaoTurno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Candidato"
    ADD CONSTRAINT "FK_Candidato_SituacaoTurno" FOREIGN KEY ("SituacaoTurnoId") REFERENCES public."SituacaoTurno"("Id") NOT VALID;


--
-- TOC entry 4728 (class 2606 OID 16487)
-- Name: EleicaoCandidato FK_Eleicao_Candidato_Candidato; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EleicaoCandidato"
    ADD CONSTRAINT "FK_Eleicao_Candidato_Candidato" FOREIGN KEY ("CandidatoId") REFERENCES public."Candidato"("Id");


--
-- TOC entry 4729 (class 2606 OID 16492)
-- Name: EleicaoCandidato FK_Eleicao_Candidato_Eleicao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EleicaoCandidato"
    ADD CONSTRAINT "FK_Eleicao_Candidato_Eleicao" FOREIGN KEY ("EleicaoId") REFERENCES public."Eleicao"("Id");


-- Completed on 2024-11-13 19:52:17

--
-- PostgreSQL database dump complete
--
