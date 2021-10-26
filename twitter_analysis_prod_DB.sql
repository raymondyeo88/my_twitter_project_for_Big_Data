--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

-- Started on 2021-10-26 19:55:09 +08

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 19179)
-- Name: followers; Type: TABLE; Schema: public; Owner: dbadmin
--

CREATE TABLE public.followers (
    follower_screen_name character varying(15) NOT NULL,
    follower_id bigint,
    follower_name character varying(150),
    followed_user character varying(30)
);


ALTER TABLE public.followers OWNER TO dbadmin;

--
-- TOC entry 202 (class 1259 OID 19171)
-- Name: tweets; Type: TABLE; Schema: public; Owner: dbadmin
--

CREATE TABLE public.tweets (
    tweet_id bigint NOT NULL,
    screen_name character varying(15),
    tweet_description character varying(500),
    tweet_date timestamp without time zone,
    tweet_favorite_count integer
);


ALTER TABLE public.tweets OWNER TO dbadmin;

--
-- TOC entry 204 (class 1259 OID 19184)
-- Name: users; Type: TABLE; Schema: public; Owner: dbadmin
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    tweet_id bigint,
    follower_screen_name character varying(15),
    user_name character varying(30),
    user_bios character varying(300),
    profile_creation_date timestamp without time zone,
    profile_url character varying(30),
    user_followers_count integer,
    user_friends_count integer
);


ALTER TABLE public.users OWNER TO dbadmin;

--
-- TOC entry 2972 (class 0 OID 19179)
-- Dependencies: 203
-- Data for Name: followers; Type: TABLE DATA; Schema: public; Owner: dbadmin
--

COPY public.followers (follower_screen_name, follower_id, follower_name, followed_user) FROM stdin;
PointJules	40124380	Jules Wang 王竣穎	JoeBiden
chrissyteigen	39364684	chrissy teigen	JoeBiden
POTUS	1349149096909668363	President Biden	JoeBiden
teachcardona	763766437	Dr. Miguel A. Cardona	JoeBiden
AliMayorkas	1330873099424854017	Alejandro Mayorkas	JoeBiden
ABlinken	635716830	Antony Blinken	JoeBiden
SecYellen	1333171793201225728	Secretary Janet Yellen	JoeBiden
neeratanden	125453969	Neera Tanden	JoeBiden
XavierBecerra	565469671	Xavier Becerra	JoeBiden
mlfudge	18829123	Marcia L. Fudge	JoeBiden
DenisMcDonough	820830366713991168	Denis McDonough	JoeBiden
PeteButtigieg	226222147	Pete Buttigieg	JoeBiden
DebHaalandNM	286476728	Deb Haaland	JoeBiden
JenGranholm	14185317	Jennifer Granholm	JoeBiden
Michael_S_Regan	2292932900	Michael S. Regan	JoeBiden
SecDef	1338994562090602497	Secretary of Defense Lloyd J. Austin III	JoeBiden
Mariska	247560825	Mariska Hargitay	JoeBiden
BidenInaugural	1333168873860984832	Biden Inaugural Committee	JoeBiden
WhiteHouse	1323730225067339784	The White House	JoeBiden
BlueAmerica22	3315264553	Truth	JoeBiden
\.


--
-- TOC entry 2971 (class 0 OID 19171)
-- Dependencies: 202
-- Data for Name: tweets; Type: TABLE DATA; Schema: public; Owner: dbadmin
--

COPY public.tweets (tweet_id, screen_name, tweet_description, tweet_date, tweet_favorite_count) FROM stdin;
1452775742471872524	JoeBiden	Folks, @TerryMcAuliffe has been here before, he knows what to do, and he knows how to deliver results for Virginia. \n\nJoin us for a campaign rally in Arlington tomorrow night. https://t.co/ZYbRaFa40N	2021-10-26 07:15:02	7050
1452666011350614020	JoeBiden	At least 55 corporations in America didn't pay a single penny in federal income tax last year. That’s got to change—and my Build Back Better Agenda will get it done.	2021-10-25 23:59:00	29152
1452422191958695945	JoeBiden	To make good on the full promise of America, we have to protect the fundamental and sacred right to vote. https://t.co/iExJiKeKyV	2021-10-25 07:50:09	12202
1452386165416472578	JoeBiden	In just nine months, we have nominated more Black women to the federal circuit courts and more public defenders to the bench than any administration in all of American history. \n\nAnd we’re just getting started.	2021-10-25 05:27:00	46468
1452292057930911751	JoeBiden	The last four years, every month was infrastructure month. But nothing happened. \n\nWe can't afford to sit while other countries pass us by.\nhttps://t.co/flOouuGsLU	2021-10-24 23:13:03	10463
1452007673067606018	JoeBiden	The struggle for our democracy is no longer just about who gets to vote. It’s about who counts the votes—and whether they should count at all. \n\nJim Crow is alive and well in the 21st century.\nhttps://t.co/ErmdUltVfa	2021-10-24 04:23:00	13059
1451932930222305280	JoeBiden	When I ran for president, I resolved to bring Scranton values to bear.\n\nWe’re going to build the economy from the ground up and the middle out, not from the top down.\nhttps://t.co/dAs96r22fc	2021-10-23 23:26:00	8507
1451706940736819206	JoeBiden	Having a broken spirit is no different than having a broken arm.\nhttps://t.co/VSmOQtQ3RX	2021-10-23 08:28:00	13499
1451626914570031107	JoeBiden	Universal pre-K for 3- and 4-year-olds is not just an investment in education, it’s an investment in the future of America. \n\nWe’re going to get it done with the Build Back Better Agenda.\nhttps://t.co/FR3mzzbb4A	2021-10-23 03:10:01	6111
1451596987644665856	JoeBiden	Climate change is an existential threat to humanity.\n\nThat’s why I’m making a commitment to get to net-zero emissions on electric power by 2035 and net-zero emissions across the board by 2050 or before.	2021-10-23 01:11:05	25412
1451566771245391892	JoeBiden	It’s time corporate America and the super-wealthy start paying their fair share.\nhttps://t.co/rjErYTQKqk	2021-10-22 23:11:01	10126
1451386830994255902	JoeBiden	I ran for president for three reasons:\nTo restore the soul and decency of our country. \nTo rebuild our economy from the bottom up and the middle out. \nAnd to help unite our country.\n\nWe’re on the right track—but there’s still work to be done.	2021-10-22 11:16:00	58183
1450471875382059018	JoeBiden	Building back better starts in the states. Since flipping the legislature in 2019, Virginia Democrats have been a model of progress—including helping us vaccinate folks to beat the pandemic. To keep our progress, we must elect @TerryMcAuliffe and Democrats up and down the ballot. https://t.co/NsJiiPNzlv	2021-10-19 22:40:18	7957
1450203535065460742	JoeBiden	For the better part of the 20th century, America led the world in investments in ourselves, in our people, in our country. But now, we risk losing our edge as a nation. Passing the Build Back Better Agenda will help us regain the momentum that we’ve lost.	2021-10-19 04:54:00	18074
1450148676899418118	JoeBiden	Folks, Virginia has an important election coming up on November 2 and we need your help reaching out to voters across the state to get out the vote. Sign up today to join a phone bank: https://t.co/FGrVXHp748	2021-10-19 01:16:01	7000
1449887450676056075	JoeBiden	A teacher shouldn’t pay a higher tax rate than a profitable company. It’s time we reward work in this country—not just wealth.	2021-10-18 07:58:00	93821
1449830326566625290	JoeBiden	Passing the Build Back Better Agenda is about competitiveness versus complacency.\nOpportunity versus decay.  \nLeading the world or letting the world pass us by.\n\nWhen workers and families have a better shot, America has a better shot.	2021-10-18 04:11:01	12622
1449764172619730951	JoeBiden	The 21st century Jim Crow assault is real. It's unrelenting, and we're going to challenge it vigorously. https://t.co/jGkrvWB5Ev	2021-10-17 23:48:08	16156
1449523302104457217	JoeBiden	It’s time to build an economy that works for working families. An economy where people from every race, background, and religion can get ahead.\n\nOur Build Back Better Agenda will get it done.	2021-10-17 07:51:00	25976
1449483543965544453	JoeBiden	The voter registration deadline is coming up in several states. Make sure you’re registered to vote at https://t.co/Hy8C4mIL2M and vote for Democrats up and down the ballot to keep America moving forward. https://t.co/c9DiEScQon	2021-10-17 05:13:01	7609
1449183311121760259	JoeBiden	With the expanded Child Tax Credit, working families are getting the relief they need thanks to the American Rescue Plan. \n\nThis money is making a difference for countless Americans and lifting millions of kids out of poverty.	2021-10-16 09:20:00	15346
1449170733561692160	JoeBiden	Today, another round of payments from the expanded Child Tax Credit will help millions of families across the country with payments of up to $300 per child. \n\nThis is just the first step. Our Build Back Better Agenda will extend this benefit for years to come.	2021-10-16 08:30:01	12263
1449161163707588615	JoeBiden	The evidence is clear: Vaccination requirements work. https://t.co/aODppNEa7F	2021-10-16 07:52:00	10980
1449091208836489218	JoeBiden	More than 1 out of 3 eligible seniors have already received their COVID-19 booster. \n\nWe’re going to continue to provide that protection to seniors and everyone else as we head into the holiday season. Together, we can put this pandemic behind us.	2021-10-16 03:14:01	10143
1449012757362315265	JoeBiden	A promise I didn’t take lightly. https://t.co/rkmkGRIUVi	2021-10-15 22:02:17	24041
1448789464650862594	JoeBiden	Our plan to accelerate a path out of this pandemic is working. https://t.co/HodK4Y7glV	2021-10-15 07:15:00	11505
1448656090221006862	JoeBiden	Tomorrow, @DrBiden is back on the campaign trail for a grassroots event with @TerryMcAuliffe.\n\nVirginia, you’re not going to find anyone who knows how to get more done than Terry. Let’s keep moving Virginia forward. RSVP now. \nhttps://t.co/V2t07vgPmp	2021-10-14 22:25:01	6799
1448039273517797384	JoeBiden	Folks, it’s been a month since I laid out my plan to accelerate the path out of this pandemic. We’ve made real progress, but we still have a long way to go.\n\nThere’s no better way to beat this pandemic than to get the vast majority of Americans vaccinated. It’s as simple as that.	2021-10-13 05:34:00	31539
1447933833521897476	JoeBiden	Virginia: Last year, the people voted and democracy prevailed. We have to do it again and elect @TerryMcAuliffe as governor.\n\nToday is the last day to register to vote. Head to https://t.co/rqHXR7xuqW and make sure you're registered.	2021-10-12 22:35:01	13405
1447350735700742146	JoeBiden	For the first time since March 2020, the unemployment rate is below 5%. We still have more work to do, but recovery is moving forward even in the face of a pandemic.	2021-10-11 07:58:00	39941
1447303172427497481	JoeBiden	We have a plan. We have the tools. Let’s finish the job—get vaccinated.\nhttps://t.co/b8jlTuDMTm	2021-10-11 04:49:00	14093
1447224907079856129	JoeBiden	An average of 600,000 new jobs have been created every month since we took office. \n\nJobs are up, wages are up, and unemployment is down. This progress is attributed to the hard work and resilience of the American people, who are battling through this pandemic.	2021-10-10 23:38:00	20777
1446982308314165252	JoeBiden	Let’s set one thing straight: The Bipartisan Infrastructure Deal and the Build Back Better Agenda are not about left versus right.\n\nThey’re about leading the world or continuing to let the world pass us by.	2021-10-10 07:34:00	37256
1446945570753589254	JoeBiden	Before the American Rescue Plan passed, the Congressional Budget Office projected that it would take until 2023 to get to a 4.8% unemployment rate.\n\nWe hit that rate in October of 2021.	2021-10-10 05:08:01	20912
1446876864342110210	JoeBiden	Here's the deal. Vaccine requirements are already proving that they work.\n\nMore than 185 million Americans are now fully vaccinated and more than 75% of eligible Americans have gotten at least one shot. That’s real progress.	2021-10-10 00:35:00	34831
1446634769048121345	JoeBiden	Let’s be clear: Vaccine requirements aren't about politics, they’re about saving lives.\nhttps://t.co/LizrAytwGZ	2021-10-09 08:33:00	22634
1446596232877592579	JoeBiden	We’re making real progress for the American people. https://t.co/CqNYb5ZFwk	2021-10-09 05:59:53	7646
1446559777694289924	JoeBiden	Millions of American parents are feeling the squeeze, having a hard time doing their job, earning a paycheck, while taking care of their children or aging parents. My Build Back Better Agenda will change that.	2021-10-09 03:35:01	24692
1446258288438484994	JoeBiden	When we give working families a break, we're not just raising their quality of life—we're putting parents in a position to earn a paycheck. That's what the Bipartisan Infrastructure Deal and the Build Back Better Agenda are all about.	2021-10-08 07:37:00	21075
1446229599290077193	JoeBiden	Teachers and firefighters shouldn’t pay a higher tax rate than millionaires and billionaires.\nhttps://t.co/02tU0LF7p1	2021-10-08 05:43:00	12756
1446128938468532231	JoeBiden	The Bipartisan Infrastructure Deal is about rebuilding our roads, our highways, our bridges, our ports, our airports, our broadband. It’s a blue-collar blueprint for rebuilding America.	2021-10-07 23:03:01	17903
1445853879401259008	JoeBiden	Our Bipartisan Infrastructure Deal and Build Back Better Agenda are not about left versus right—they’re about competitiveness versus complacency.\nhttps://t.co/H54nLNbzqL	2021-10-07 04:50:02	7974
1445818651869728768	JoeBiden	Republicans forcing us to default on the debt would lead to a self-inflicted wound that would take our economy over a cliff.\nhttps://t.co/x0anA9Gjk7	2021-10-07 02:30:03	5852
1445469237468749841	JoeBiden	My message to Republicans: If you don't want to help save the country, get out of the way. https://t.co/5Um4dL0XO8	2021-10-06 03:21:36	27207
1445417858687700992	JoeBiden	Republicans won't vote to raise the debt limit to cover their own policies under the previous administration. It’s reckless and dangerous. https://t.co/qXu0jlcQbf	2021-10-05 23:57:26	9381
1443366490158272517	JoeBiden	We have a path to usher in a new era of economic growth that benefits everybody, not just those at the top, with the Build Back Better Agenda and Bipartisan Infrastructure Deal.	2021-09-30 08:06:02	32323
1443332006742568967	JoeBiden	The Bipartisan Infrastructure Deal and the Build Back Better Agenda will create good-paying jobs and lower costs for families. \n\nTogether they will grow the economy for everybody.	2021-09-30 05:49:00	23069
1443286545608454153	JoeBiden	This is the moment to make sure all of us—not just the wealthy few at the top—are dealt in and share the benefits of a growing economy. This is our opportunity to not just build back, but build back better for all Americans.	2021-09-30 02:48:22	21390
1442984974328627203	JoeBiden	Our Build Back Better Agenda will strengthen our economy by lowering taxes on the working and middle class, and reducing the cost of child care, housing, and higher education.\n\nWe will grow our economy from the bottom up and the middle out.	2021-09-29 06:50:01	15915
1442965340653121537	JoeBiden	As my friend, American hero Representative John Lewis, reminded us shortly before he passed, 'Democracy is not a state. It is an act.’ This National Voter Registration Day, and every day, we are committed to defending, strengthening, and expanding the sacred right to vote.	2021-09-29 05:32:00	27826
1442918811116523521	JoeBiden	Last year, 55 of the largest corporations paid zero dollars in federal income taxes on over $40 billion of profits.\n\nIt’s time for big corporations to finally pay their fair share.	2021-09-29 02:27:07	20028
1442896187770564609	JoeBiden	We have the power to build the country we hope to leave to our children and grandchildren—and it starts at the ballot box.\n\nOn this National Voter Registration Day, check that your voter registration status is up to date at https://t.co/Hy8C4n0lUk.	2021-09-29 00:57:13	9878
1442617142222917633	JoeBiden	Today I got my COVID-19 booster shot—and just like my first and second dose, it was safe and easy. \n\nGet vaccinated. Together, can we save lives and beat this virus. https://t.co/gtNAQqmOoj	2021-09-28 06:28:23	44885
1442600939022602243	JoeBiden	The wealthy don’t need another tax cut. Our Build Back Better agenda will create an economy that works for those who built America: the middle class.	2021-09-28 05:24:00	22465
1442581561300426756	JoeBiden	We need to reward work in this country—not just wealth.	2021-09-28 04:07:00	57973
1442521593289138180	JoeBiden	Join @DrBiden and @TheDemocrats for a virtual town hall tonight to discuss our Build Back Better Agenda, upcoming elections, and what Democrats need to do to win in 2022. RSVP now→\nhttps://t.co/AotPstgKgL	2021-09-28 00:08:43	4785
1442272522775400448	JoeBiden	Over 182 million Americans have already done the right thing and are fully vaccinated as of today.  \n\nTo the other 70 million eligible Americans who have yet to get their first shot: get vaccinated. It can save your life. https://t.co/V5pz14zBQP	2021-09-27 07:39:00	14535
1442220684407676929	JoeBiden	Millionaires and billionaires are paying a lower tax rate than teachers and firefighters. We’re going to restore fairness to the tax code, give working people a much-needed tax cut, and make the investments that will grow our economy for years to come.	2021-09-27 04:13:00	53302
1442184451362988034	JoeBiden	Our Build Back Better Agenda will cut taxes for the middle class, lower costs for working families, create more jobs, and sustain economic growth for years to come. \n\nAnd the most important part? No one making under $400,000 will pay a penny more in taxes.	2021-09-27 01:49:02	20565
1442146441993064449	JoeBiden	If you don’t qualify for the booster, or you got the Moderna and Johnson &amp; Johnson vaccines: if you’re fully vaccinated, you’re highly protected from severe illness even if you get COVID-19. https://t.co/1FbMCy9san	2021-09-26 23:18:00	10069
1441939328939302912	JoeBiden	Climate change is all around us. From hurricanes and unprecedented flooding to historic wildfires, we’ve seen its effects firsthand all summer. \n\nWe have a chance to stop climate change’s worst effects, but we have to act right now. We must pass our Build Back Better Agenda.	2021-09-26 09:35:00	18763
1426676508349943815	JoeBiden	Our economy is coming back—but there’s more work to be done. We have to beat this virus. Get vaccinated.	2021-08-15 06:46:00	91571
1441899064556204033	JoeBiden	We’ve made so much progress during the past eight months of this pandemic, and now we face a critical moment. We have the tools and we have the plan—we just have to finish the job together as one nation. \n\nPlease, get vaccinated.	2021-09-26 06:55:00	30018
1441871636731293701	JoeBiden	While typical working Americans pay their taxes, the top 1% evade an estimated $160 billion in taxes each year.\n \nIt’s wrong—and it’s past time the ultra-wealthy and corporations paid their fair share.	2021-09-26 05:06:01	35951
1441848758321438723	JoeBiden	The majority of Americans who were fully vaccinated with the Pfizer vaccine are now eligible to receive a booster shot six months after they've received their second shot. https://t.co/6vVAhppz8u	2021-09-26 03:35:06	11495
1441803436291416069	JoeBiden	For too long, our economy has worked great for those at the top, while the hardworking people who built this country have been cut out of the deal. Our Build Back Better Agenda will deal working people back in.	2021-09-26 00:35:01	23684
1441542463613718528	JoeBiden	Folks, we’re facing an urgent choice: do we keep an economy that serves the wealthiest and biggest corporations—or finally give middle class families a fair shot?\n\nOur Build Back Better agenda is our moment to prove to the American people that their government works for them.	2021-09-25 07:18:00	33551
1441125220916420611	JoeBiden	The Bipartisan Infrastructure Deal is a blue-collar blueprint to rebuild America that will help make our historic economic recovery a historic long-term boom.	2021-09-24 03:40:02	18896
1441068624048017410	JoeBiden	Our Build Back Better Agenda will bring down the everyday costs that have for years been taking a bigger and bigger bite out of middle-class families’ incomes: health care, prescription drug costs, child care, education, housing, or caring for an elderly relative or loved one.	2021-09-23 23:55:08	15573
1440683552753033216	JoeBiden	We stand at an inflection point in history. The United States intends to work with partners and allies to answer these questions and help lead the world toward a more peaceful, prosperous future for all people. https://t.co/3JYwybRezw	2021-09-22 22:25:00	10776
1440481472855494657	JoeBiden	As we pursue diplomacy across the board, the U.S. will champion the democratic values that go to the very heart of who we are as a nation and a people—freedom, equality, opportunity, and a belief in the universal rights of all people. \n\nIt's stamped into our DNA as a nation.	2021-09-22 09:02:00	15529
1440453789090152458	JoeBiden	For the first time in 20 years, the United States is not at war. We’ve turned the page.\n\nAll the unmatched strength, energy, commitment, will, and resources of our nation are now fully and squarely focused on what’s ahead of us, not what was behind. https://t.co/4n3HlIiUlY	2021-09-22 07:12:00	17811
1440428877822660608	JoeBiden	As we recover from this crisis, we must put in place a long-term plan to increase opportunities with better jobs and higher wages; a plan that will lower the everyday costs that strain our budgets and our nation’s families.\n\nOur Build Back Better Agenda will get it done.	2021-09-22 05:33:01	11190
1440377300948643841	JoeBiden	The evidence is clear: climate change poses an existential threat. If we don't stay below 1.5°C of global temperature rise, we're in deep trouble.  \n\nWe need to build back better by investing in clean energy, cutting emissions, and fighting climate change head on.	2021-09-22 02:08:04	27469
1440120847142895624	JoeBiden	This summer alone, over 100 million Americans and the communities they call home have been affected by extreme weather.  \n\nWe can’t just rebuild, we have to build back better. We have to invest in climate resilience to protect our communities and work to cut carbon emissions.	2021-09-21 09:09:00	17660
1439975893250740225	JoeBiden	Our Build Back Better Agenda will invest in working families by cutting taxes, lowering prescription drug prices and health care costs, and reducing the cost of child care. \n\nWe’ll build our economy from the bottom up and middle out.	2021-09-20 23:33:01	17403
1439607728016609286	JoeBiden	Past presidents have cut taxes for the wealthy and biggest corporations with the promise of economic growth.\n\nIt doesn't work.\n\nThe ultra-wealthy and corporations must pay their fair share—which will lower costs for the middle class.	2021-09-19 23:10:03	54254
1439266438997553155	JoeBiden	Our Build Back Better Agenda is a historic investment in middle-class families. It will be paid for by reforming the tax code to make sure the wealthiest Americans and largest corporations pay their fair share.\n\nNo one earning under $400,000 will pay a penny more in taxes.	2021-09-19 00:33:53	21280
1439228469028794368	JoeBiden	Virtually all of the COVID deaths and hospitalizations are from unvaccinated people. Get your shot.	2021-09-18 22:03:01	46289
1438987881545076738	JoeBiden	We can build an economy that gives working people a fair shot. \nWe can restore some sanity and fairness to our tax code. \nWe can make the investments that we know are long overdue in this nation. \n\nThat's exactly what my Bipartisan Infrastructure Plan does.	2021-09-18 06:07:00	15635
1438944345881812999	JoeBiden	Our Build Back Better agenda takes on the existential threat of climate change directly by investing in clean energy, creating good-paying, union jobs, and working to stop the climate crisis’s most disastrous impacts on working families.	2021-09-18 03:14:01	13115
1438891499463262222	JoeBiden	Big corporations and the super wealthy have to start paying their fair share of taxes. It’s long overdue. \n\nI'm not out to punish anyone. All I'm asking is that you pay your fair share—just like middle-class folks do.	2021-09-17 23:44:01	43554
1438678843213037570	JoeBiden	When big corporations and the wealthy pay their fair share, we are able to invest in America. https://t.co/b2U1BgSdjP	2021-09-17 09:39:00	12170
1438649149738700809	JoeBiden	Republican governors in states like Texas and Florida are doing everything they can to undermine the public health requirements that keep people safe.\n\nThey're playing politics with the lives of their citizens, especially children. I refuse to give in to it.	2021-09-17 07:41:00	35570
1438620810491613187	JoeBiden	This is our moment to prove to the American people that their government works for them, not just for the big corporations and those at the very top. https://t.co/Ie9keqGYqk	2021-09-17 05:48:24	11512
1438535418841116676	JoeBiden	The Build Back Better Agenda will lower the costs of:\n✅ Child care\n✅ Higher education\n✅ Prescription drugs\n✅ Health care\n✅ Housing\n\nAnd we’ll do it by making the wealthiest and large corporations pay their fair share.	2021-09-17 00:09:05	15691
1438223300489056261	JoeBiden	Congratulations Governor @GavinNewsom on defeating the recall. This vote is a resounding win for the approach that he and I share to beating the pandemic: strong vaccine requirements, steps to reopen schools safely, and plans to help those who get sick.	2021-09-16 03:28:50	69722
1437883965168312322	JoeBiden	California, the eyes of the nation are on you. Vote NO on the recall before polls close at 8pm to keep @GavinNewsom as governor and keep moving our country forward. https://t.co/uV4UbFsSBF	2021-09-15 05:00:26	13558
1427677357297516552	JoeBiden	Four presidents have presided over an American troop presence in Afghanistan—two Republicans and two Democrats. We will not pass this war onto a fifth. https://t.co/d5kIcw27h8	2021-08-18 01:03:01	25244
1437842363678957584	JoeBiden	California, Election Day is today. On behalf of people all across America, don’t take anything for granted. If you want to vote in person, make sure you know where you’re going to vote. If you’ve already voted, make sure your family and friends are voting. Vote no on the recall. https://t.co/Y9DFAZej6S	2021-09-15 02:15:07	16002
1437816410659430402	JoeBiden	California, vote to keep @GavinNewsom your governor. The rest of America is counting on you, and so am I. https://t.co/mYnR2isUjI	2021-09-15 00:32:00	15964
1437766739627057159	JoeBiden	California, today is Election Day. We’re counting on you to vote NO on the recall to keep @GavinNewsom in office and California moving forward.\n\nPolls are open until 8pm. Make your voice heard.	2021-09-14 21:14:37	39110
1437603766790918146	JoeBiden	Tomorrow's Election Day—so I’m here with @GavinNewsom to ask Californians to vote no on the recall. Help protect the progress we’ve made. https://t.co/GDWCT1Z4zZ	2021-09-14 10:27:02	16105
1437153113035747338	JoeBiden	Vaccines are free, safe, and convenient. https://t.co/mJS9AteS8o	2021-09-13 04:36:17	36481
1436676656169635847	JoeBiden	Twenty years ago, nearly 3,000 lives were cut short by an unspeakable act of cowardice and hatred on 9/11. As a nation, we must never forget those we lost during one of the darkest moments in our history and the enduring pain of their families and loved ones.	2021-09-11 21:03:01	100473
1436490934770929706	JoeBiden	Our new COVID-19 plan will reduce the number of unvaccinated Americans, decrease hospitalizations and deaths, allow our children to go to schools safely, and keep our economy strong by keeping businesses open. \n\nWe will spare no effort in saving lives and beating this virus.	2021-09-11 08:45:02	39530
1436367668911788060	JoeBiden	Our plan takes on the elected officials in states that are undermining the life-saving actions we need to take to defeat COVID-19. \n\nIf these governors won’t help us beat the pandemic, we will get them out of the way. https://t.co/8XcibeNeV4	2021-09-11 00:35:13	16327
1436341714264985601	JoeBiden	My first responsibility is to protect the American people and make sure we have vaccines for every American, including enough boosters. As soon as they're authorized, those eligible will be able to get a free booster right away in tens of thousands of sites across the country.	2021-09-10 22:52:05	50343
1436155670978568196	JoeBiden	The Department of Labor is developing an emergency rule to require that all employers with 100 or more employees ensure their workforces are fully vaccinated or show a negative test at least once a week. https://t.co/Yn2kDf63FU	2021-09-10 10:32:49	26803
1435999951230840842	JoeBiden	The Bipartisan Infrastructure Deal and the Build Back Better Agenda will:\n✅Create millions of good-paying jobs rebuilding roads and bridges\n✅Lower taxes for working families\n✅Lower costs for working families, including child care, elder care, community college, pre-K, and more	2021-09-10 00:14:02	10720
1435739980706500609	JoeBiden	The pandemic of the unvaccinated is a tragedy that is preventable. People are dying and will die from COVID-19 who don't have to. \n\nIf you haven't gotten vaccinated, do it now. It could save your life and the lives of those you love.	2021-09-09 07:01:00	53099
1435605847225339911	JoeBiden	Folks, the evidence is clear, climate change poses an existential threat to our lives and our economy. But we can stop it from getting worse. \n\nOur Build Back Better plan will make investments to fight the climate crisis, cut emissions, and make our infrastructure more resilient.	2021-09-08 22:08:00	31002
1434894331845005318	JoeBiden	The middle class built America, and unions built the middle class.  \n\nThis Labor Day, we honor all the workers, and their enduring movement, that keep our economy moving and are the heart, soul, and spine of this nation. https://t.co/mzLEKfW7j8	2021-09-06 23:00:42	14183
1433891056953790482	JoeBiden	We are now the only developed country in the world whose economy is bigger than it was before the pandemic. Our economic plan is working. https://t.co/Xj715N5rx7	2021-09-04 04:34:03	24462
1433562887298199555	JoeBiden	The Supreme Court's overnight ruling is an unprecedented assault on constitutional rights and requires an immediate response.\n\nWe will launch a whole-of-government effort to respond, looking at what steps we can take to ensure that Texans have access to safe and legal abortions.	2021-09-03 06:50:01	79273
1433546883205578756	JoeBiden	To everyone who is still in harm's way and for all those struggling to deal with the aftermath of the storms and fires, keep the faith. We’re going to stand with you for as long as it takes to recover and rebuild.	2021-09-03 05:46:25	21795
1433183957424689157	JoeBiden	Texas law SB8 will significantly impair people’s access to the health care they need—particularly for communities of color and individuals with low incomes.\n\nWe are deeply committed to the constitutional right established in Roe v. Wade and will protect and defend that right.	2021-09-02 05:44:17	45742
1433063313362104325	JoeBiden	I was not going to extend this forever war. https://t.co/QoDLRA4Hqr	2021-09-01 21:44:53	22368
1432884413235347462	JoeBiden	This decision about Afghanistan is not just about Afghanistan. It's about ending an era of major military operations to remake other countries.	2021-09-01 09:54:00	110658
1432876149437255683	JoeBiden	There is nothing low-grade, low-risk, or low-cost about any war. It was time to end the war in Afghanistan. https://t.co/jAGbWnBzol	2021-09-01 09:21:10	23428
1430628555742920704	JoeBiden	We're going to do everything that we can to provide safe evacuation for Americans, our Afghan allies, partners, and Afghans who might be targeted because of their association with the United States.	2021-08-26 04:30:02	41534
1430520767385677829	JoeBiden	Thank you to @SpeakerPelosi and every Democrat who came together to advance our Build Back Better Agenda in the House. The House’s historic vote is a huge step forward in our work to restore America’s economy, rebuild our infrastructure, and invest in our shared future.	2021-08-25 21:21:43	38395
1430272177744629762	JoeBiden	To the millions of Americans who have been waiting for full FDA approval—go get your COVID-19 shot now. https://t.co/393WzbJ6om	2021-08-25 04:53:55	15706
1430162366939942924	JoeBiden	The United States stands by the commitment we’ve made to evacuate people—and this includes vulnerable Afghans, such as women leaders and journalists. https://t.co/kfjfyKmBcM	2021-08-24 21:37:34	13581
1429845800612413441	JoeBiden	Once screened and cleared, we will welcome Afghans who helped us in the war effort to their new home in the United States of America. \n\nBecause that's who we are. That's what America is.	2021-08-24 00:39:38	93698
1429611346346250242	JoeBiden	To those in Henri’s path: Don't forget that you may need to seek shelter while we’re still battling COVID-19 and the Delta variant. So wear a mask and try to observe social distancing.\n\nAnd to everyone across the country, don't get caught by the next storm. Get vaccinated now.	2021-08-23 09:08:00	38232
1428058056672247813	JoeBiden	Human rights must be the center of our foreign policy, not the periphery. But the way to do it is not through endless military deployments. https://t.co/w2jMtgzisE	2021-08-19 02:15:47	18975
1427712487072227337	JoeBiden	The answer is clear: We cannot continue to repeat the mistakes of the past. https://t.co/AA9Fc6ZFXi	2021-08-18 03:22:37	28345
1426589251504902145	JoeBiden	While we will have ups and downs along the way, it’s clear: our economic plan is working, it produces results, and it’s moving our country forward. https://t.co/uAIcTZowyH	2021-08-15 00:59:16	11830
1426181243482251272	JoeBiden	Today, about 40 million families will receive their second monthly payment as part of the expanded Child Tax Credit.\n\nThis money is a game changer─and for some, it’s a lifesaver. https://t.co/v7BJtVo8eJ	2021-08-13 21:58:00	20624
1425984566012092422	JoeBiden	Gov. @GavinNewsom is leading California through unprecedented crises—he's a key partner in fighting the pandemic and helping build our economy back better. To keep him on the job, registered voters should vote no on the recall election by 9/14 and keep California moving forward.	2021-08-13 08:56:28	78677
1425614760515555329	JoeBiden	There are no Republican bridges or Democratic roads. The Bipartisan Infrastructure Deal is a win for all Americans. https://t.co/fcvJV3zwd8	2021-08-12 08:27:00	14079
1425592958435446785	JoeBiden	What a year it’s been. With @KamalaHarris, we are building our country back better than ever before. https://t.co/FXQeOcbBqg	2021-08-12 07:00:22	18797
1425525587716755460	JoeBiden	After years and years of “infrastructure week,” we're on the cusp of a historic, bipartisan infrastructure decade that will transform America.	2021-08-12 02:32:39	44509
1423802823192481797	JoeBiden	Big news: In total, our administration has created over 4 million new jobs. That’s more jobs created than any other president’s first six months in history.\n\nThe Biden plan is working. https://t.co/ebe6Yhgdre	2021-08-07 08:27:00	20339
1423687828639203331	JoeBiden	On January 6, a mob of extremists launched a violent and deadly assault on the Capitol.\n\nThe truth prevailed because brave law enforcement officials put their lives on the line to defend democracy. On behalf of a grateful nation, we thank you. https://t.co/oi184Tf6Bo	2021-08-07 00:50:03	16128
1423350890354905088	JoeBiden	We’ve made historic economic progress and created more jobs than any administration has done in the first six months of being in office.\n \nNow, we have a chance to turn this great movement into an economy that works for all Americans—not just the wealthy.	2021-08-06 02:31:11	17205
1422678412200710148	JoeBiden	Workers shouldn’t just compete for jobs. Jobs should compete for workers. https://t.co/2o4a7Bjd9c	2021-08-04 05:59:00	13210
1421925956055351298	JoeBiden	It’s past time the super wealthy and profitable corporations began paying their fair share. https://t.co/cHHSzIK9tU	2021-08-02 04:09:00	16272
1421861032402817032	JoeBiden	If you’re worried about the Delta variant, the answer is simple: get vaccinated. https://t.co/IYxM6RYWRd	2021-08-01 23:51:01	44832
1421527341126373378	JoeBiden	.@TheDemocrats are making historic, early strategic investments that are needed to elect Democrats in 2021, 2022, and onward.\n\nYou can help us keep building back better and elect Democrats up and down the ballot by adding a grassroots donation today.\nhttps://t.co/vFRmWw6m5F	2021-08-01 01:45:03	5541
1419674057369391111	JoeBiden	You’re not gonna find anyone who knows how to get more done for Virginia than @TerryMcAuliffe. https://t.co/wosvuiDdCJ	2021-07-26 23:00:46	7873
1419389748750307332	JoeBiden	America is about possibilities. https://t.co/xZG43VXAcM	2021-07-26 04:11:01	19470
1418717115834642433	JoeBiden	.@TerryMcAuliffe is running for governor of Virginia to create good-paying jobs, make health care more affordable, and give every child a world-class education. Tune in for our grassroots event. https://t.co/fpVcjUf0Cq	2021-07-24 07:38:13	9056
1417540067027992583	JoeBiden	Six months in, our economic plan is working. https://t.co/j5hTV93YwP	2021-07-21 01:41:03	23892
1417244793722314752	JoeBiden	With the expanded Child Tax Credit, we're proving that democracy can deliver for the American people. https://t.co/CElYsejTiH	2021-07-20 06:07:44	10961
1416833698872401928	JoeBiden	Wildfires don’t stop at a county or state line. That’s why we’re working hand-in-hand with state and local leaders to invest in prevention and preparation to fight wildfires. https://t.co/IJYy4Qpi7T	2021-07-19 02:54:11	13353
1416448669688156171	JoeBiden	Our service members—at home and abroad—are the steel spine of America. https://t.co/djTxn46dxC	2021-07-18 01:24:13	10955
1416103737748242433	JoeBiden	After a year of hard-fought progress on COVID-19, we can't get complacent now. Let's finish the job together. https://t.co/vATTWcD3EM	2021-07-17 02:33:35	13537
1415389383100825602	JoeBiden	Let’s be clear: we’re going to vigorously challenge attacks on our elections. https://t.co/XZ7WiwXV1K	2021-07-15 03:15:00	16914
1415308547588567045	JoeBiden	The “big lie” is just that—a big lie. https://t.co/vWz9LrUK5s	2021-07-14 21:53:47	23645
1413516563118964742	JoeBiden	On this day last year during the economic crisis, we announced we weren’t just going back to the way things were—we were going to build back better. \n\nOur work continues strengthening the middle class, ensuring everyone is dealt-in, and building a more climate-resilient nation.	2021-07-09 23:13:05	16733
1413182029898780674	JoeBiden	The sacred right to vote is under attack across the country. That’s why @TheDemocrats are launching a first-of-its-kind voter protection effort. Tune in.\nhttps://t.co/HwcGh0KhbF	2021-07-09 01:03:46	7916
1411682736859910153	JoeBiden	America is coming back—together. https://t.co/Alt087kMUO	2021-07-04 21:46:06	24039
1411340208705097734	JoeBiden	Over 300 million shots administered.\nChecks delivered to more than 169 million Americans.\nMore than three million jobs added to the U.S. economy.\n\nWe’ve come a long way. But this is just the beginning.	2021-07-03 23:05:01	52973
1410989575732961286	JoeBiden	Help us mark our independence from this virus—get vaccinated.	2021-07-02 23:51:44	77383
1410694898601316359	JoeBiden	The science is clear: The best way to protect yourself against the virus and its variants is to be fully vaccinated. \n\nIf you have not been vaccinated, get your COVID-19 shot as soon as possible. Now is not the time to let our guard down.	2021-07-02 04:20:47	43276
1410264588730482691	JoeBiden	.@TheDemocrats are mobilizing volunteers and organizers, investing in state parties, fighting to protect voting rights, and more. If you can, consider chipping in to keep building the party infrastructure we need to win—from the school board to the Senate.\nhttps://t.co/JPmx9sPyde	2021-06-30 23:50:54	5396
1409895452430974981	JoeBiden	We, the people, are coming back together. https://t.co/xELkAnPq6z	2021-06-29 23:24:05	13571
1408833331282780167	JoeBiden	It took a herculean effort across the globe—including the ingenuity of scientists, building on decades of research—to develop a vaccine. As a result, deaths from COVID-19 are plummeting. Our economy is rebounding. And millions of Americans are getting back to living their lives. https://t.co/lqwfh0Nj21	2021-06-27 01:03:35	15434
1407825795075264516	JoeBiden	It’s a simple proposition: Who do you love? https://t.co/jDUjB9J6pL	2021-06-24 06:20:00	14750
1407087431908737024	JoeBiden	Together, we are going to build an economy that rewards work—not just wealth. An economy that works for the backbone of this country: the people who get up every single day to work hard to provide for their families, who are just looking for a little bit of breathing room.	2021-06-22 05:26:00	43384
1406251731051233282	JoeBiden	To honor the true meaning of Juneteenth, we have to continue toward that promise of equality for all. https://t.co/tu6m038Y8T	2021-06-19 22:05:14	18988
1405584970186362884	JoeBiden	It’s a big deal that the Affordable Care Act is here to stay. Reminder: You can sign up for health care at https://t.co/3CYKhP8ZoR—help us spread the word.	2021-06-18 01:55:46	22368
1405272580538306565	JoeBiden	We're on the right track. The American Rescue Plan laid a strong foundation for a new economy that brings everybody along, but it's just the first step. We must pass the American Jobs Plan to build an economy that works for everyone.	2021-06-17 05:14:26	47960
1404912394401423366	JoeBiden	We’re seeing a coordinated attack on voting rights in this country. It’s Jim Crow in the 21st century, and it must end.\n\nCongress must enact legislation to make it easier for all eligible Americans to access the ballot box and prevent attacks on the sacred right to vote.	2021-06-16 05:23:11	75287
1404592092475703297	JoeBiden	Democracy thrives when the infrastructure of democracy is strong; when people have the right to vote freely, fairly, and conveniently; when a free and independent press pursues the truth; when the law applies equally to everyone, regardless of who they are or what they look like.	2021-06-15 08:10:25	57028
1404230838619979784	JoeBiden	The pandemic exposed just how badly we need to invest in the foundation of our country, and in the working people of our country. That's why we proposed the American Jobs Plan—we need to make generational investments today to succeed tomorrow.	2021-06-14 08:14:55	59371
1403777473800773635	JoeBiden	The COVID-19 vaccine is free, but lack of access to child care can be a barrier. That’s why four of our nation’s largest child care providers are offering free care for parents and caregivers getting vaccinated from now until July 4: https://t.co/nAUPgjxTWI	2021-06-13 02:13:25	16474
1403037362670743559	JoeBiden	COVID-19 vaccines are free. Get vaccinated, folks.	2021-06-11 01:12:29	166498
1402700112292425736	JoeBiden	LGBTQ+ rights are human rights. As we celebrate this month, we won’t rest until full equality for LGBTQ+ Americans is finally achieved and codified into law. The Senate must pass the Equality Act.	2021-06-10 02:52:22	89956
1402391817065308168	JoeBiden	We said from the very beginning: there’s no chance for our economy to come back unless we beat the pandemic. And now, after more than a year of darkness, we’re emerging into the light.\n\nGet your vaccine and do your part to help get our country back on track.	2021-06-09 06:27:19	37460
1401992264516308995	JoeBiden	The United States is the only industrialized country in the world with no national paid family leave policy. It’s a disgrace. \n\nWe must pass the American Families Plan.	2021-06-08 03:59:38	86103
1401632881332699138	JoeBiden	In the competition for the 21st century, the future will be built right here in America.	2021-06-07 04:11:34	44497
1401310832882077696	JoeBiden	We’re counting on you to get vaccinated: https://t.co/EwdQ2dFHwG.	2021-06-06 06:51:52	33986
\.


--
-- TOC entry 2973 (class 0 OID 19184)
-- Dependencies: 204
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: dbadmin
--

COPY public.users (user_id, tweet_id, follower_screen_name, user_name, user_bios, profile_creation_date, profile_url, user_followers_count, user_friends_count) FROM stdin;
939091	1452775742471872524	PointJules	Joe Biden	Husband to @DrBiden, proud father and grandfather. Ready to build back better for all Americans. Official account is @POTUS.	2007-03-12 01:51:24	https://t.co/UClrPuJpyZ	31565000	48
\.


--
-- TOC entry 2840 (class 2606 OID 19183)
-- Name: followers followers_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.followers
    ADD CONSTRAINT followers_pkey PRIMARY KEY (follower_screen_name);


--
-- TOC entry 2838 (class 2606 OID 19178)
-- Name: tweets tweets_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.tweets
    ADD CONSTRAINT tweets_pkey PRIMARY KEY (tweet_id);


--
-- TOC entry 2842 (class 2606 OID 19188)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 2844 (class 2606 OID 19194)
-- Name: users users_follower_screen_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_follower_screen_name_fkey FOREIGN KEY (follower_screen_name) REFERENCES public.followers(follower_screen_name);


--
-- TOC entry 2843 (class 2606 OID 19189)
-- Name: users users_tweet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_tweet_id_fkey FOREIGN KEY (tweet_id) REFERENCES public.tweets(tweet_id);


-- Completed on 2021-10-26 19:55:10 +08

--
-- PostgreSQL database dump complete
--

