-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Mei 2016 pada 09.18
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `newhrris`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `applicant`
--

CREATE TABLE IF NOT EXISTS `applicant` (
  `id_applicant` int(11) NOT NULL AUTO_INCREMENT,
  `nama_applicant` varchar(70) NOT NULL,
  `email_applicant` varchar(70) NOT NULL,
  `alamat` text NOT NULL,
  `gender` varchar(2) NOT NULL,
  `no_hp` varchar(70) NOT NULL,
  `universitas` varchar(70) NOT NULL,
  `jurusan` varchar(70) NOT NULL,
  `ipk` decimal(10,2) NOT NULL,
  `thn_lulus` smallint(5) NOT NULL,
  `CV` varchar(255) DEFAULT NULL,
  `portofolio` varchar(255) DEFAULT NULL,
  `text` text,
  `status_ter_update` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_job_vacant` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_applicant`),
  KEY `id_job_vacant` (`id_job_vacant`),
  KEY `status_ter_update` (`status_ter_update`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `applicant`
--

INSERT INTO `applicant` (`id_applicant`, `nama_applicant`, `email_applicant`, `alamat`, `gender`, `no_hp`, `universitas`, `jurusan`, `ipk`, `thn_lulus`, `CV`, `portofolio`, `text`, `status_ter_update`, `updated_at`, `created_at`, `id_job_vacant`, `is_active`) VALUES
(1, 'Alice', 'alice@gmail.com', 'Jakarta', 'F', '0857322352', 'UI', 'Sistem Informasi', '3.70', 2014, NULL, NULL, NULL, 3, '2016-05-16 06:36:39', '2016-05-06 07:04:17', 3, 1),
(2, 'Bob', 'bob@gmail.com', 'Jakarta', 'M', '0857322352', 'UI', 'Ilmu Komputer', '3.53', 2014, NULL, NULL, NULL, 3, '2016-05-08 17:35:49', '2016-05-06 07:04:17', 1, 1),
(3, 'Charlie', 'charlie@gmail.com', 'Depok', 'M', '0857322352', 'ITB', 'Teknik Elektro', '3.23', 2013, NULL, NULL, NULL, 3, '2016-05-14 07:45:59', '2016-05-06 07:04:17', 1, 1),
(4, 'Darwin', 'darwin@gmail.com', 'Bogor', 'M', '0857322352', 'Gunadarma', 'Ilmu Komputer', '2.84', 2015, NULL, NULL, NULL, 1, '2016-05-06 07:04:17', '2016-05-06 07:04:17', 4, 1),
(5, 'Edward', 'edward@gmail.com', 'Bandung', 'M', '0857322352', 'UI', 'Sistem Informasi', '3.25', 2015, NULL, NULL, NULL, 1, '2016-05-16 06:56:06', '2016-05-06 07:04:17', 6, 0),
(6, 'Felix', 'felix@gmail.com', 'Bogor', 'M', '0857322352', 'UI', 'Ilmu Komputer', '3.00', 2012, NULL, NULL, NULL, 1, '2016-05-06 07:04:17', '2016-05-06 07:04:17', 5, 1),
(7, 'George', 'george@gmail.com', 'Bekasi', 'M', '0857322352', 'UGM', 'Teknik Informatika', '3.30', 2012, NULL, NULL, NULL, 1, '2016-05-06 07:04:17', '2016-05-06 07:04:17', 4, 1),
(8, 'Hans', 'hans@gmail.com', 'Jakarta', 'M', '0857322352', 'Binus', 'Teknik Informatika', '2.91', 2011, NULL, NULL, NULL, 1, '2016-05-06 07:04:17', '2016-05-06 07:04:17', 3, 1),
(9, 'Iris', 'iris@gmail.com', 'Tangerang', 'F', '0857322352', 'UI', 'Ilmu Komputer', '2.72', 2010, NULL, NULL, NULL, 1, '2016-05-06 07:04:17', '2016-05-06 07:04:17', 2, 1),
(10, 'Jessica', 'jessica@gmail.com', 'Jakarta', 'F', '0857322352', 'Gunadarma', 'Ilmu Komputer', '2.41', 2014, NULL, NULL, NULL, 1, '2016-05-06 07:04:17', '2016-05-06 07:04:17', 2, 1),
(12, 'Mamid', 'mamid@gmail.com', 'Jln. Penyelesaian Tomang 4', 'F', '81310888681', 'UI', 'SO', '0.01', 2015, 'uploads/cv/CV - Mamid - UI.pdf', NULL, 'No', 3, '2016-05-11 07:47:02', '2016-05-11 07:44:29', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `available_schedule`
--

CREATE TABLE IF NOT EXISTS `available_schedule` (
  `id_av_schedule` int(11) NOT NULL AUTO_INCREMENT,
  `available_date` date NOT NULL,
  `notes` text,
  `email_users` varchar(70) NOT NULL,
  `id_job_vacant` int(11) NOT NULL,
  `available_time` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_used` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_av_schedule`),
  KEY `email_users` (`email_users`),
  KEY `id_job_vacant` (`id_job_vacant`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `available_schedule`
--

INSERT INTO `available_schedule` (`id_av_schedule`, `available_date`, `notes`, `email_users`, `id_job_vacant`, `available_time`, `updated_at`, `created_at`, `is_used`) VALUES
(7, '2016-05-10', '', 'ace@flipbox.co.id', 1, '02:07:00', '2016-05-11 03:56:23', '0000-00-00 00:00:00', 1),
(9, '2016-05-11', '', 'ace@flipbox.co.id', 2, '10:50:00', '2016-05-11 03:50:12', '0000-00-00 00:00:00', 0),
(10, '2016-05-18', '', 'ace@flipbox.co.id', 1, '02:48:00', '2016-05-11 07:50:24', '0000-00-00 00:00:00', 0),
(11, '2016-05-11', '', 'ace@flipbox.co.id', 1, '14:48:00', '2016-05-11 07:50:24', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id_company` int(11) NOT NULL AUTO_INCREMENT,
  `nama_company` varchar(70) NOT NULL,
  PRIMARY KEY (`id_company`),
  UNIQUE KEY `nama_company` (`nama_company`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `company`
--

INSERT INTO `company` (`id_company`, `nama_company`) VALUES
(1, 'Definite (PT Definite Maji Arsana)'),
(2, 'Flipbox (PT Saka Digital Arsana)'),
(4, 'Innovecto (PT Adrian Saka Arsana)'),
(3, 'Karya (PT Krya Saka Arsana)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `competency`
--

CREATE TABLE IF NOT EXISTS `competency` (
  `id_kompetensi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kompetensi` varchar(70) NOT NULL,
  `penjelasan_kompetensi` text NOT NULL,
  PRIMARY KEY (`id_kompetensi`),
  UNIQUE KEY `nama_kompetensi` (`nama_kompetensi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data untuk tabel `competency`
--

INSERT INTO `competency` (`id_kompetensi`, `nama_kompetensi`, `penjelasan_kompetensi`) VALUES
(1, 'Accountability', '<b>Definition: \r\no>demonstrates and communicates a high level of ownership and commitment to achieving results  \r\n<b>Level One \r\no>Accepts responsibility for own behaviour and job related tasks "" clarifies with supervisor the expected behaviours and results associated with role "" establishes \r\n\r\nagreements with  others as to how success will be measured "" accepts the consequences of own performance "" avoids laying blame  \r\nb>Level Two \r\no>Takes steps to perform work at a high level in order to achieve goals "" demonstrates a high level of effort to complete work to agreed standards "" works outside \r\n\r\nthe limits of own job when necessary to achieve results "" seeks feedback and modifies own behaviour and approach to improve performance  \r\nb>Level Three \r\no>Makes a contribution to the goals of others and to the team "" derives satisfaction from seeing the team succeed "" in collaboration with team members takes \r\n\r\nownership of how the team behaves and the results it produces  \r\nb>Level Four \r\no>Assumes responsibility for the performance and results of the entire team "" acts Immediately to provide feedback on individual and team performance (results & \r\n\r\nbehaviour) "" involves others as appropriate in responding to external feedback "" ensures the consequences associated with behaviour and performance are appropriate \r\n\r\nand understood  \r\n'),
(2, 'Communicating', 'b>Definition: \r\no>Listens; speaks and writes clearly and concisely  \r\nb>Level One \r\no>Listens in order to clarify information; Sends both written and verbal messages in a clear manner "" uses clear language and avoids jargon "" asks questions to test \r\n\r\nfor clarity and understanding "" explains complex terms "" uses concrete examples  \r\nb>Level Two \r\no>Provides timely, appropriate and useful information to others "" determines the most effective method of communication "" tailors messages to the needs of the \r\n\r\nintended audience"" uses personal judgement to determine what information is useful to coworkers and clients  \r\nb>Level Three \r\no>Increases the value of information by providing sound interpretation "" communicates clearly and succinctly in any setting "" uses personal and organizational \r\n\r\nknowledge to \r\nenhance the value of information for others "" proposes uses for the information "" makes his/her point with resistant audiences '),
(3, 'Composure', 'b>Definition: \r\no>Responds constructively to emotional situations, high pressure and conflict  \r\nb>Level One \r\no>Adjusts comfortably to demanding situations "" is patient "" remains focused on resolving issues rather than defending positions "" clearly defines the behaviours \r\n\r\nwhich contribute to constructive dialogue  \r\nb>Level Two \r\no>Deals with issues forthrightly and with sensitivity "" finds common ground "" can detect signs of anxiety and stress in others "" acknowledges the feelings \r\n\r\nassociated with conflict between individuals "" expresses ideas and information in a straight forward manner "" confronts issues without delay "" openly invites others \r\n\r\nto air differing points of view  \r\nb>Level Three \r\no>Achieves mutually agreeable results when faced with conflict or crisis "" suspends judgement "" approaches conflict as an opportunity for resolution "" is not \r\n\r\nthreatened by conflict "" encourages people to express feelings as a step in clarifying issues and defusing conflict/crisis '),
(4, 'Decision Making', 'b>Definition: \r\no>Assesses the importance, urgency and risk associated with each situation and takes actions which are timely and in the best interests of the organization  \r\nb>Level One \r\no>Makes timely and accurate decisions with readily available information and within clearly defined parameters "" knows when to refer matters to the next level "" \r\n\r\ndetermines the priorities and acts within the agreed upon time frame "" applies and achieves agreed upon standards of quality "" identifies choices from a range of \r\n\r\npreviously made decisions and selects the one which bests fits the needs of the situation   \r\nb>Level Two \r\no>Makes good decisions by defining the parameters and acting on what is important "" assesses the situation and takes a course of action that is based on what is \r\n\r\nimportant "" is not unduly influenced by the personal biases of others "" does not procrastinate "" implements, follows through and follows up; expedites   \r\nb>Level Three \r\no>Makes good decisions by clarifying ambiguous situations and accurately assessing the risk "" asks questions "" develops alternatives with clearly documented \r\n\r\nconsequences for each possible course of action "" tests with others for their understanding of a situation  \r\nb>Level Four \r\no>Makes decisions which are based on the values and principles of the organization when \r\nthere is information which is incomplete or conflicting "" uses the values and principles of the organization to determine what is important and to guide decisions in \r\n\r\nthe absence of precedent "" makes decisions which others have by action or word expressed a reluctance to tackle'),
(5, 'Goal Setting', 'b>Definition: \r\no>Increases effectiveness by setting individual, team and organization wide goals  \r\nb>Level One \r\no>Is motivated by achieving or surpassing challenging goals "" has goals which direct personal and professional life that are specific, measurable, achievable, \r\n\r\nrealistic and timed "" measures personal effectiveness by the extent to which goals are achieved "" is persistent in achieving goals "" regularly refers to goals in \r\n\r\ncommunicating with others “ uses goals as a means of assessing own performance and that of others  \r\nb>Level Two \r\no>Maintains focus by linking individual goals to the goals of the team and organization "" develops goals by determining how best to con tribute to the goals of the \r\n\r\nteam and organization "" monitors progress in order to assess the need for changes "" sets priorities by assessing importance and urgency of needs against the broader \r\n\r\ngoals of the team and organization "" modifies goals in response to changing priorities \r\n'),
(6, 'Integrity', 'b>Definition: \r\no>Achieves a high level of trust in relationships "" respects others, communicates high personal standards which reflect socially accepted norms "" adheres to the \r\n\r\norganizations values and guidelines of conduct "" keeps commitments made to others "" is open and honest "" actions are consistent with words "" represents self \r\n\r\ntruthfully "" does not exploit people'),
(7, 'Planning', 'b>Definition: \r\no>Uses an effective methodology to determine priorities, set goals, create a plan, take action and measure results  \r\nb>Level One \r\no>Organizes own work in order to complete routine tasks "" prepares daily, weekly and monthly work plans "" establishes priorities and plans based on knowledge of \r\n\r\nteam/departmental plans "" modifies plans based on level of success in achieving results "" seeks input from others in order to improve the plan  \r\nb>Level Two \r\no>Prepares plans which guide the activities of a team, project or multi-function team “ conducts needs assessments and prepares feasibility studies "" analyzes \r\n\r\ninformation to identify trends, issues, goals, costs and benefits "" builds a blueprint as a means of informing others and gaining their commitment "" schedules work \r\n\r\n"" conducts post implementation reviews and documents results for future reference  \r\nb>Level Three \r\no>Leads/sponsors complex projects which impact multiple stakeholders and the long term success of the organization "" pulls together resources from a cross the \r\n\r\norganization"" gains acceptance and agreement from multiple and diverse stakeholders  "" sustains momentum and support by regularly communicating the importance and \r\n\r\naccomplishments of a project of function "" recognizes key achievements as means of sustaining the momentum and commitment of the team and the organization'),
(8, 'Problem Solving', 'b>Definition: \r\no>Takes a systematic approach to solving problems rather than reacting to symptoms  \r\nb>Level One \r\no>Recognizes problems as they arise and uses good judgement and common sense to resolve issues "" uses experience and knowledge to detect work related problems "" uses \r\n\r\nlogic and a system to gather information, analyze causes and generate alternative approaches "" considers all evidence and the context in which the problem occurs to \r\n\r\nfind   solutions "" spots problems, opportunities and threats early "" seeks assistance of supervisor in resolving complex or ambiguous problems   \r\nb>Level Two \r\no>Uses all available resources to assess the problem and to identify the best solution “ applies a proven methodology to solve problems in all aspects of \r\n\r\nteam/department operations "" enjoys the challenge of solving problems "" does not avoid problems   "" can identify trends before problems occur "" participates in \r\n\r\nteam-based problem solving by providing constructive input  \r\nb>Level Three \r\no>Takes initiative to identify conflicts within a team and fosters an environment which supports resolution "" promotes problem solving as an essential process "" \r\n\r\nreads body language and voice tone to detect signs of conflict, hesitation or discomfort with the team approach to problem solving "" identifies weaknesses an d adapts \r\n\r\nthe process to the needs of the team members/stakeholders participating in problem solving'),
(9, 'Self Development', 'b>Definition: \r\no>Knows own capabilities, seeks out feedback and responds positively to improve performance  \r\nb>>Level One \r\no>Responds positively to feedback regarding performance and strives to develop in current role "" listens to and clarifies feedback from supervisor "" works with \r\n\r\nsupervisor to establish a plan for development in role "" takes steps to ensure agreed upon development goals are met by participating in recommended training "" \r\n\r\nsolicits feedback   from supervisor and others on attempts to use new knowledge and skills   \r\nb>Level Two \r\no>Seeks opportunities for development "" develops improvement plans on own intitiative "" seeks projects to increase know ledge and improve job related skills "" \r\n\r\nindependently reviews own progress "" proposes ideas for own development "" reflects on and learns from experiences "" responds well to new situations that require a \r\n\r\nstretch/growth  \r\nb>Level Three \r\no>Takes advantage of opportunities to grow beyond current role "" broadens perspective on issues by undertaking projects beyond the scope of own role and the \r\n\r\norganization” teaches and/o r mentors others "" volunteers for assignments that others may be reluctant to do because it represents an opportunity to learn'),
(10, 'Strategic Perspective', 'b>Definition: \r\no>Emphasizes the broader, longer term vision and values of the organization as a means of guiding decisions and actions  \r\nb>Level One \r\no>Thinks several steps ahead in order to complete tasks and projects "" understands the organization plan, vision and values "" links individual and team/department \r\n\r\nplans to the broader goals of the organization "" keeps up to date on matters which could impact the department   \r\nb>Level Two \r\no>Considers the implications of information, decisions and actions beyond the team/department "" seeks to understand issues, trends and perspectives that have \r\n\r\nimportance to the organization and its stakeholders "" analyzes the relative strengths, weaknesses, opportunities and threats when developing plans "" anticipates \r\n\r\nchanges  "" communicates the progress or results of the team/department or project by showing how the results contribute to the organization plan   \r\nb>Level Three \r\no>Develops and communicates a compelling yet credible vision of the future for all members of the organization "" focuses on the long term success of the organization \r\n\r\nas a community "" shares the vision, values and organization plan with all stakeholders "" integrates and represents fairly the needs and desires of all stakeholders \r\n\r\n'),
(11, 'Sustaining Functional, Technical and Organizational Proficiency', 'b>Definition: \r\no>Acquires depth and breadth of knowledge in all aspects pertaining to departmental, professional/vocational roles and the organization  \r\nb>Level One \r\no>Applies new knowledge, procedures and skills to own job and assists others within the team to do so "" uses multiple sources of information (i.e.; conferences, \r\n\r\nformal training, journals, reference guides) to remain up to date on role with in the team and organization "" is interested in and not intimidated by new ideas and \r\n\r\nchange “ demonstrates mastery of own function or specialization "" freely shares know ledge with others  \r\nb>Level Two \r\no>Helps others to make the connections between own area of expertise and other functions within the organization "" acquires knowledge which extends beyond boundaries \r\n\r\nof own role and the team "" communicates the relevance of information within own role to others on the team and to other departments "" learns about the interpersonal \r\naspects of working with others in addition to the technical components of the role "" understands budgets, cash flows and financial reporting    \r\nb>Level Three \r\no>Remains informed on the broader economic, political and social factors which could impact the organization and helps others understand these factors "" maintains a \r\n\r\nbroad network of people within the organization "" develops networks in areas of own expertise "" reads extensively to develop an appreciation of issues which could \r\n\r\nimpact the organization "" learns and understands concepts/models from outside of the organization environment in order to respond to issues from the broadest \r\n\r\nperspective'),
(12, 'Self-confidence', 'b>Definition: \r\no>Demonstrating one’s ability to accomplish a task or to solve problems. This includes dealing with increasingly challenging circumstances, making sound decisions, and \r\n\r\npresenting opinions effectively. Self-confidence can be a double-edged sword, however, as these two examples show: Positive: Someone with enough self-confidence to \r\n\r\nrecognize the importance of independent initiatives by staff, or of lively, open discussions about service quality among staff, is generally well received. Negative: \r\n\r\nSomeone whose unbridled confidence borders on arrogance tends to put others off.  \r\nb>Level One \r\no>Generally exudes self-confidence: Works with little supervision, appears confident, and presents oneself with assurance.  \r\nb>Level Two \r\no>Regularly acts independently: Can make decisions without always asking others what has to be done. Corrects problems himself or herself and informs management \r\n\r\naccordingly.  \r\nb>Level Three \r\no>Chooses challenges: Likes to do stimulating work and eagerly anticipates challenges. Looks for and gets new responsibilities. Exercises calm, sound, constructive \r\n\r\njudgment during conflicts or awkward situations.  \r\nb>Level Four \r\no>Chooses extremely challenging situations: Discusses openly with management or clients and recommends courses of action, or tackles extremely challenging projects, \r\n\r\nknowing that they may not always be implemented or successful.  '),
(13, 'Developing Others', 'b>Definition: \r\no>The desire to foster the long-term growth of others, but without playing the role of a formal trainer or facilitator.  To what extent does the person help others \r\n\r\ngrow personally and professionally in the long-term?  \r\nb>Level One \r\no>Gives ad hoc instructions: Gives detailed instructions or on-the-job \r\ndemonstrations; explains how to do tasks, makes specific and useful suggestions or ensures someone else is available to help out.    \r\nb>Level Two \r\no>Uses a rationale or reasoning when giving instructions or demonstrations: Stresses the benefits the person will gain by following procedures properly. To this end, \r\n\r\nvolunteers resources, tools, information, expert advice, etc.  \r\nb>Level Three \r\no>Oversees the development of others in the medium term, sometimes as a mentor: By expressing confidence in their potential to grow, helps others integrate and \r\n\r\ndevelop. Knows how to reinforce others’ current and expected abilities. Believes in their potential to learn, even in “difficult” cases.  \r\nb>Level Four \r\no>Follows progress and provides longer-term training: Gives constructive feedback that focuses on problems and behaviours rather than personalities. Reassures others \r\n\r\nafter a setback and gives tailor-made suggestions for improvement. To this end, arranges assignments, training or experiences that help people work out problems \r\n\r\nthemselves (ex. sets up temporary assignments; ex. asks an employee to evaluate a software package for the unit).  \r\nb>Level Five \r\no>Designs extensive training strategies, uses delegation to foster development, and rewards this development: Identifies training or development needs and establishes \r\n\r\nprograms or creates materials to meet those needs. May use relatively new approaches for teaching traditional material. May arrange for longer-term and multi-faceted \r\n\r\nexperiences for others, including the opportunity to learn by trial and error in a supportive setting.'),
(14, 'Team leadership', 'b>Definition: \r\no>The willingness to head a group and, as such, the desire to direct others. This competency is generally, but not always, shown in positions that involve formal \r\n\r\nauthority.  To what extent does the person bring a group of people to work effectively and in harmony?  \r\nb>Level One \r\no>States expectations: Assigns duties and responsibilities. Directs ad hoc activities (ex. sets meeting agendas and controls meeting time).  \r\nb>Level Two \r\no>Shares information and explanations: Individually or in groups, tells others affected by a decision about the causes, origins and consequences of the decision, even \r\n\r\nif he or she is not required to do so. Makes sure the group has the information it needs to continue working well.  \r\nb>Level Three \r\no>Works at keeping the team strong and motivated: Uses his or her authority \r\nfairly and equitably. Resolves conflicts and gives constructive criticism (individual or collective). Uses strategies to boost morale and productivity (ex. team-\r\n\r\nbuilding activities, informal recognition, cross-training).   \r\nb>Level Four \r\no>Generates long-term commitment: Has true charisma and expresses, beyond the team itself, a long-term vision that generates enthusiasm for and commitment to the \r\n\r\nteam’s mission. Has proven his or her leadership skills throughout the organization.  '),
(15, 'Listening, Understanding and Responding', 'b>Definition: \r\no>Combine to create effective interaction with others. They include the principle of dealing with people in a direct, open, trusting and respectful manner.  To what \r\n\r\nextent does the person care about what others have to say?  \r\nb>Level One \r\no>Freely listens to others: Seeks further clarification to ensure he or she understands. Responds respectfully and with an obvious willingness to ensure mutual \r\n\r\nunderstanding (can identify a problem and refer a person in need to the right place).  \r\nb>Level Two \r\no>Shows empathy: Accurately measures other people’s perspective, behaviour and motivation, and uses that insight to respond to unexpressed or poorly expressed \r\n\r\nmessages.  \r\nb>Level Three \r\no>Understands non-verbal cues: In addition to listening with empathy, grasps non-verbal cues (such as body language) and reacts sensitively. Knows how to bring out \r\n\r\nunspoken thoughts or concerns. Takes action accordingly.  \r\nb>Level Four \r\no>Acts as a trusted advisor or advocate: Deals with very sensitive or emotionally charged situations while keeping things in perspective “can predict behaviour or \r\n\r\nawkward situations because he or she has taken the time to understand someone ’s family background, personal history, employment experience, etc”  '),
(16, 'Sharing of Expertise', 'b>Definition: \r\no>Means both the motivation to expand and use one’s knowledge, and the willingness to share this knowledge with others.  To what extent does the person share his or \r\n\r\nher expertise with others?  \r\nb>Level One \r\no>Answers questions from colleagues and clients : Shares with others the knowledge related to one’s job.  \r\nb>Level Two \r\no>Volunteers extra knowledge: Goes beyond single answers to increase others’ knowledge or understanding, or to influence their actions (ex. tries to answer deeper \r\nissues, and agrees to spend time helping others resolve problems in his or her field).  \r\nb>Level Three \r\no>Volunteers expert help: Creates opportunities to help people with problems in their field or with their performance in this area. Offers help without being asked. \r\nb>Level Four \r\no>Spreads new knowledge and technical expertise: Regularly introduces and «sells» new technology or new knowledge to others '),
(17, 'Impact and influence', 'b>Definition: \r\no>Imply the will to convince or influence others so that they end up supporting the speaker’s plan or ideas.  To what extent does the person use persuasion tactics?  \r\nb>Level One \r\no>Uses basic persuasion techniques: Uses basic persuasion techniques in a discussion or presentation (ex. appeals to reason, uses data and examples, visual aids,  \r\n\r\ndemonstrations, and explains consequences and implications, etc.).  \r\nb>Level Two \r\no>Uses targeted persuasion techniques: Adapts a presentation or discussion to appeal to the interest and level of varying audiences. Anticipates the effect of his or \r\n\r\nher words and actions or of other details on people; prepares with these factors in mind.  \r\nb>Level Three \r\no>Adds win-win solutions to targeted persuasion techniques: Knows how to propose concrete solutions that mesh with each audience’s needs or interests.   \r\nb>Level Four \r\no>Influences or persuades through third parties: Uses experts or other resource persons to influence (ex. obtains the support from interveners in a file; ex. Chooses \r\n\r\nspecific moments at which to share certain details, in order to produce a particular effect).  \r\nb>Level Five \r\no>Influences and persuades through complex political manoeuvring: Arranges situations or jobs, or even changes larger structures, to bring about the desired behaviour. \r\n\r\nAlso uses governing bodies to reach a goal or create an impact. '),
(18, 'Self-control', 'b>Definition: \r\no>Is the ability to cap one’s emotions to avoid negative reactions when provoked, when faced with opposition or hostility, or when working under stress.  It also \r\n\r\nincludes the ability to stay focussed despite prolonged stress.  To what extent can the person control or properly channel strong emotions such as anger?  \r\nb>Level One  \r\no>Responds calmly to spur-of-the-moment stress: When feeling strong emotions (anger, extreme frustration, intense stress) during a conversation or a given task, holds \r\n\r\nthese emotions back and continues to talk or act calmly.  \r\nb>Level Two  \r\no>Successfully manages more sustained stress: Contains the effects of strong emotions or stress over time; works well despite continued pressure. Knows how to use \r\n\r\nspecial techniques or activities to manage emotions or stress.  \r\nb>Level Three \r\no>Responds constructively and calms others: Though feeling strong emotions or stress, not only controls oneself but also calms others and takes action to resolve the \r\n\r\ncause of the stress or emotions. May interrupt an activity to calmly discuss the conflict or stress at hand. Tries to craft thorough solutions to stress-inducing \r\n\r\nproblems.'),
(19, 'Personal motivation', 'b>Definition: \r\no>Is a concern for working well or for measuring oneself against a standard of excellence. The standard may be one’s own past performance (striving for improvement), \r\n\r\nan objective measure (attaining results), the performance of others (staying competitive), tough goals, or even something no one has ever done (striving for \r\n\r\ninnovation). To what extent does the person think about meeting and exceeding goals and about taking calculated risks for measured gains?  \r\nb>Level One \r\no>Meets basic objectives: Attains objectives set by management (ex. balances a budget, processes a set number of files).  \r\nb>Level Two \r\no>Improves performance: Changes procedures or one’s own work methods (ex. works faster, at lower cost, more efficiently) to improve performance, quality, customer \r\n\r\nsatisfaction, morale, revenues.\r\nb>Level Three \r\no>Creates his or her own measures of excellence: Beyond targets set by management, sets personal objectives (cost maintenance or reduction, etc.) that are truly \r\n\r\nchallenging, yet realistic and attainable (ex. “When I took over, efficiency was 60%; now it has  improved to 85%.”).  \r\nb>Level Four \r\no>Makes administrative decisions based on calculated risks: To this end, does cost-benefit analyses and sets priorities or chooses goals based on the investment of \r\n\r\nhuman,   financial or physical resources (ex. gives detailed advice on potential benefits, investment returns, cost-benefit analyses or client satisfaction). Commits \r\n\r\nsignificant  resources and time (despite the uncertainty of results) to improve performance; tries new things; reaches a challenging goal while minimizing the risks \r\n\r\ninvolved.   \r\nb>Level Five \r\no>Takes strategic administrative decisions and follows them up: Takes many sustained actions over time –and despite obstacles– to follow through on his or her \r\n\r\ninitiatives (ex. uses lobbying to demonstrate the worthiness of a project). '),
(20, 'Planning and Initiative', 'b>Definition: \r\no>Means undertaking initiatives whenever possible. This competency pertains to current projects as well as to future opportunities or challenges. To what extent does \r\n\r\nthe person not only think ahead but also act on future needs and opportunities?    \r\nb>Level One \r\no>Acts on current obligations or problems: Recognizes normal obligations and acts on them to the extent that the policies and procedures allow. Plans and organizes his \r\n\r\nor her work around these obligations.  \r\nb>Level Two \r\no>Shows persistence: Persists and takes steps to overcome obstacles or rejection. Does not give up easily when things get difficult.  \r\nb>Level Three \r\no>Plans and acts for the short term: Creates opportunities or minimizes problems by acting on them before they arise (ex. anticipates a special trip and its related \r\n\r\nproblems; therefore reschedules meetings, contacts key people, etc.)  \r\nb>Level Four \r\no>Plans for the medium term: Plans for opportunities or problems in the not-too-distant future and organizes resources and activities accordingly   \r\nb>Level Five \r\no>Plans for the long term: Anticipates longer-term opportunities or problems and organizes resources and activities to deal with them (over two years, for instance).  \r\nb>Level Six \r\no>Designs complex comprehensive plans: Uses detailed plans that bridge several issues spanning a very long time. Makes sophisticated use of resources to meet strategic \r\n\r\ngoals. As a result, is almost always prepared for contingencies and is well able to take advantage of opportunities as they arise.'),
(21, 'Critical thinking', 'b>Definition: \r\no>Is the ability to break a situation down into smaller pieces to identify its key or underlying issues. It includes not only organizing the parts of a problem \r\n\r\nsystematically and comparing all the aspects of a problem, but also figuring out cause-and-effect relationships (if...then...) that can help solve it. To what extent \r\n\r\ndoes the person  understand cause-and-effect relationships, establish constants, gather items into  coherent groupings, and find new ways to look at things?  \r\nb>Level One \r\no>Establishes basic relationships: Basically analyses the relationships among a few parts of a problem or situation. To this end, makes basic causal links (A causes B) \r\n\r\nand proand-con lists to make simple decisions   \r\nb>Level Two \r\no>Establishes multiple relationships: Analyses relationships among several parts of a problem or situation, often on the strength of theoretical knowledge or extensive \r\nexperience. Breaks down relatively complex tasks into more manageable parts. Recognizes more subtle causal links. Generally anticipates obstacles and thinks about the \r\n\r\nnext step or about alternatives     \r\nb>Level Three \r\no>Makes complex plans and analyses: Breaks down very complex, multidimensional problems or processes into key parts. Uses sophisticated techniques such as strategic \r\n\r\nplanning and flow charts to solve problems or improve operations  \r\nb>Level Four \r\no>Occasionally creates concepts: Thinks of totally new concepts to rework how things are done and to solve problems. Also experiments with several multi-faceted \r\n\r\nconcepts or theories   '),
(22, 'Information Seeking', 'b>Definition: \r\no>Is driven by an underlying desire to know more about things, people or issues, beyond that required in the job. This competency may include searching extensively for \r\n\r\nexact information, solving problems by asking a series of questions, or stockpiling information that may be of future use.  To what extent does the person go beyond \r\n\r\nthe obvious to stay on top of information?  \r\nb>Level One  \r\no>Obtains basic answers from the people who are present: Uses the visible sources of information. Asks questions such as: What happened ? Who’s involved ? When did it \r\n\r\nhappen?  \r\nb>Level Two \r\no>Seeks out other people to obtain basic answers: Finds and questions those closest to the problem, even though they may not be in his or her immediate surroundings.  \r\nb>Level Three \r\no>Discovers the “why” in addition to basic answers: Actively looks for the root of a problem or situation. Finds out why something happened by asking open-ended \r\n\r\nquestions such as who? how? why? which?  \r\nb>Level Four \r\no>Calls or contacts others to better understand the “why”: Consults persons not directly affected by the situation to tap their perspective, background information, \r\n\r\nexperience, etc.  \r\nb>Level Five \r\no>Complements his or her consultations by systematic research: Over a set period, uses different ways of obtaining data or feedback (ex. does formal research in \r\n\r\nnewspapers, magazines, computer search systems or other sources).  \r\nb>Level Six \r\no>Sets up procedures or systems to collect information constantly: Holds regular informal meetings, talks to people in their own office, establishes a network of \r\n\r\npeople who regularly get information for him or her.  '),
(23, 'Concern for Order and Quality', 'b>Definition: \r\no>Is the desire to see things done logically, clearly and well: It takes various forms: monitoring and checking work or information, insisting on the clarity of roles \r\n\r\nand duties, setting up and maintaining information systems.  To what extent does the person pay attention to details and organize them?  \r\nb>Level One \r\no>Checks his or her own work and takes an interest in the overall quality of work in the unit: Tends to the quality of the information, services and systems at the \r\n\r\nlevel of her or his own personal work. Pays attention to the quality of work throughout the unit   \r\nb>Level Two \r\no>Monitors the general quality of the work and recommends improvements as his or her responsibilities allow: Ensures that procedures are followed and keeps clear, \r\n\r\ndetailed records. Suggests improvements in other areas (ex. number of files processed, number of customers served to satisfaction).  \r\nb>Level Three \r\no>Monitors systems, projects or information: Monitors the progress of a project or the efficiency of a system. Analyses data, pinpoints weaknesses or missing data, and \r\n\r\nseeks out information to maintain or even improve organization and priorities (ex. obtains progress reports from workers and team leaders).  \r\nb>Level Four \r\no>Designs systems on his or her own: Tries to improve the quality of data and services by designing complex tools such as flow charts and engineering plans. '),
(24, 'Client-Service Orientation', 'b>Definition: \r\no>Implies helping or serving others, to meet their needs. It means focussing on discovering those needs and figuring out how to best meet them. The term “clients” \r\n\r\nrefers to both internal and external clients.  To what extent does the person act on behalf of the person being served?  \r\nb>Level One \r\no>Provides basic follow-up and adds value: Clearly establishes mutual expectations with clients to ensure satisfaction. To this end, gives clients all the information \r\n\r\nthey need and offers service beyond the client’s expectations (ex. a client needs documents, so the employee offers to send them and includes extra brochures of \r\n\r\npossible interest; ex. volunteers information about limited access to a building in case the caller has a disability).  \r\nb>Level Two \r\no>Provides a more sustained follow-up involving one’s personal responsibility: Personally commits to advancing a customer’s request or correcting customer service \r\n\r\nproblems,  and does so undefensively. Remains available, when possible, especially when the \r\ncustomer is going through a critical period. As such, makes it easy for the customer to reach him or her, or spends extra time with the customer, when possible.  \r\nb>Level Three \r\no>Knows how to uncover underlying needs that often go unsaid: Tries to identify the real needs of the client, that is, those not necessarily expressed at the outset, \r\n\r\nand matches these needs with customized products or services    \r\nb>Level Four \r\no>Works to establish a long-term relationship with clients: Tries to give them durable benefits; may become their primary advisor; may even absorb immediate costs or \r\n\r\naccept more difficult conditions to sew the seeds of a longer-term relationship.'),
(25, 'Flexibility', 'b>Definition: \r\no>Is the ability to work effectively in a variety of situations, and with various individuals or groups. It entails understanding and appreciating different and \r\n\r\nopposing perspectives on an issue, adapting one’s approach to the changes at hand, and easily accepting such changes, be they in one’s own duties or in the whole \r\n\r\norganizations direction.  To what extent can the person change gears or drop the task at hand when circumstances demand it?  \r\nb>Level One \r\no>Accepts the need for flexibility: Readily accepts to change one’s work or schedule, or to replace a colleague whenever the need arises. Understands that other \r\n\r\npeople’s points of view are as good and reasonable as his or her own.  \r\nb>Level Two \r\no>Applies procedures flexibly where context allows: Alters normal procedures to fit a specific situation and to meet a client’s needs.  \r\nb>Level Three \r\no>Adapts his or her own plans: Agrees to change his or her overall plan or goal in response to a new situation (ex. in the light of circumstances or facts put forward \r\n\r\nby other units, agrees to change the entire objective of a project).  \r\nb>Level Four \r\no>Introduces University-wide changes: To meet the needs of a specific situation, oversees large-scale changes such as the amalgamation or abolishment of services and \r\n\r\nprograms.'),
(26, 'Teamwork and co-operation', 'b>Definition: \r\no>Call for a strong willingness to work closely with colleagues or with other employees toward a common goal (task force, special issue) as opposed to working in \r\n\r\ncompetition with others. To what extent does the person act to enhance the operation of his or her team?  \r\nb>Level One \r\no>Shares information and co-operates: Regularly informs other team members of both the events and the individual and collective actions affecting the group. Supports \r\n\r\nthe team’s decisions (ex. speaks in good of others). Willingly does his or her share of the work.  \r\nb>Level Two \r\no>Creates team spirit by speaking positively of others: In addition to doing his or her work, speaks highly of team members to promote a friendly climate and strong \r\n\r\nmorale; shows confidence in others; recognizes their ability to meet expectations and to contribute effectively to the team’s duties. Gives public credit to deserving \r\n\r\nteam members. Therefore does what has to be done while encouraging others.  \r\nb>Level Three \r\no>Strengthens team spirit by asking everyone to contribute: Asks others to help with the tasks at hand; wants to learn from others; seeks ideas and opinions not only \r\n\r\nto make decisions and draft plans, but also to promote co-operation. Prompts others to play an active role on the team.\r\nb>Level Four \r\no>Is the main catalyst in the team’s vibrancy: In addition to bolstering the team’s overall morale and commitment, encourages team members to discuss concerns and \r\n\r\nconflicts openly rather than covering them up or overlooking them; knows how to solve conflicts to everyone’s benefit. ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `competency_used`
--

CREATE TABLE IF NOT EXISTS `competency_used` (
  `id_kompetensi` int(11) NOT NULL,
  `id_report_form` int(11) NOT NULL,
  PRIMARY KEY (`id_kompetensi`,`id_report_form`),
  KEY `id_report_form` (`id_report_form`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `competency_used`
--

INSERT INTO `competency_used` (`id_kompetensi`, `id_report_form`) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(2, 2),
(26, 7),
(2, 8),
(8, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisi`
--

CREATE TABLE IF NOT EXISTS `divisi` (
  `id_divisi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_divisi` varchar(70) NOT NULL,
  `id_company` int(11) NOT NULL,
  PRIMARY KEY (`id_divisi`),
  KEY `id_company` (`id_company`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data untuk tabel `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `nama_divisi`, `id_company`) VALUES
(1, 'Project Manager', 1),
(2, 'Web Developer', 1),
(3, 'Design', 1),
(4, 'UI/UX', 1),
(5, 'Account Manager', 1),
(6, 'QA', 1),
(7, 'Mobile Developer', 1),
(8, 'Human Resource', 1),
(9, 'Analyst', 1),
(10, 'Produser', 1),
(11, 'Project Manager', 2),
(12, 'Web Developer', 2),
(13, 'Design', 2),
(14, 'UI/UX', 2),
(15, 'Account Manager', 2),
(16, 'QA', 2),
(17, 'Mobile Developer', 2),
(18, 'Human Resource', 2),
(19, 'Analyst', 2),
(20, 'Produser', 2),
(21, 'Project Manager', 3),
(22, 'Web Developer', 3),
(23, 'Design', 3),
(24, 'UI/UX', 3),
(25, 'Account Manager', 3),
(26, 'QA', 3),
(27, 'Mobile Developer', 3),
(28, 'Human Resource', 3),
(29, 'Analyst', 3),
(30, 'Produser', 3),
(31, 'Project Manager', 4),
(32, 'Web Developer', 4),
(33, 'Design', 4),
(34, 'UI/UX', 4),
(35, 'Account Manager', 4),
(36, 'QA', 4),
(37, 'Mobile Developer', 4),
(38, 'Human Resource', 4),
(39, 'Analyst', 4),
(40, 'Produser', 4),
(41, 'COO', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `interview`
--

CREATE TABLE IF NOT EXISTS `interview` (
  `id_wawancara` int(11) NOT NULL AUTO_INCREMENT,
  `cara_wawancara` varchar(70) DEFAULT NULL,
  `notes` text,
  `id_applicant` int(11) NOT NULL,
  `id_av_schedule` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `keterangan` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_wawancara`),
  KEY `id_applicant` (`id_applicant`),
  KEY `id_av_schedule` (`id_av_schedule`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `interview`
--

INSERT INTO `interview` (`id_wawancara`, `cara_wawancara`, `notes`, `id_applicant`, `id_av_schedule`, `updated_at`, `created_at`, `keterangan`) VALUES
(7, 'Meet', '', 2, 7, '2016-05-11 03:56:22', '0000-00-00 00:00:00', 1),
(9, 'Skype', '', 12, 11, '2016-05-11 07:50:24', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `involved_interview`
--

CREATE TABLE IF NOT EXISTS `involved_interview` (
  `id_wawancara` int(11) NOT NULL,
  `email_users` varchar(70) NOT NULL,
  PRIMARY KEY (`id_wawancara`,`email_users`),
  KEY `email_users` (`email_users`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `involved_interview`
--

INSERT INTO `involved_interview` (`id_wawancara`, `email_users`) VALUES
(7, 'ace@flipbox.co.id'),
(9, 'ace@flipbox.co.id'),
(7, 'anestanggang@gmail.com'),
(9, 'anestanggang@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `involved_job_vacant`
--

CREATE TABLE IF NOT EXISTS `involved_job_vacant` (
  `id_job_vacant` int(11) NOT NULL,
  `email_users` varchar(70) NOT NULL,
  PRIMARY KEY (`id_job_vacant`,`email_users`),
  KEY `email_users` (`email_users`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `involved_job_vacant`
--

INSERT INTO `involved_job_vacant` (`id_job_vacant`, `email_users`) VALUES
(1, 'ace@flipbox.co.id'),
(2, 'ace@flipbox.co.id'),
(1, 'anestanggang@gmail.com'),
(2, 'anestanggang@gmail.com'),
(7, 'anestanggang@gmail.com'),
(8, 'anestanggang@gmail.com'),
(8, 'diniseprilia@gmail.com'),
(1, 'khalilahunafa@gmail.com'),
(2, 'khalilahunafa@gmail.com'),
(7, 'khalilahunafa@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_vacant`
--

CREATE TABLE IF NOT EXISTS `job_vacant` (
  `id_job_vacant` int(11) NOT NULL AUTO_INCREMENT,
  `posisi_ditawarkan` varchar(70) NOT NULL,
  `jml_kebutuhan` smallint(5) NOT NULL,
  `requirement` text NOT NULL,
  `is_open` tinyint(1) NOT NULL,
  `id_divisi` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id_job_vacant`),
  KEY `id_divisi` (`id_divisi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `job_vacant`
--

INSERT INTO `job_vacant` (`id_job_vacant`, `posisi_ditawarkan`, `jml_kebutuhan`, `requirement`, `is_open`, `id_divisi`, `description`) VALUES
(1, 'Project Manager', 3, '', 1, 1, ''),
(2, 'Web Developer', 2, 'lalalal\r\no> nanana\r\no>hsjshajJS', 1, 12, 'lal'),
(3, 'UI/UX Developer', 3, '', 1, 14, ''),
(4, 'QA', 4, '', 0, 16, ''),
(5, 'Account Manager', 5, '', 1, 25, ''),
(6, 'Analyst', 3, '', 0, 39, ''),
(7, 'Bikin Khalila Marah', 3, 'Asasasasas', 0, 29, 'Asasasas'),
(8, 'A', 1, 'asasas', 0, 11, 'asas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `id_report` int(11) NOT NULL AUTO_INCREMENT,
  `isi_report` text,
  `id_applicant` int(11) NOT NULL,
  `email_users` varchar(70) NOT NULL,
  `id_report_form` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nilai_kompetensi` text,
  PRIMARY KEY (`id_report`),
  UNIQUE KEY `id_applicant` (`id_applicant`,`email_users`,`id_report_form`),
  KEY `email_users` (`email_users`),
  KEY `id_report_form` (`id_report_form`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `report`
--

INSERT INTO `report` (`id_report`, `isi_report`, `id_applicant`, `email_users`, `id_report_form`, `updated_at`, `created_at`, `nilai_kompetensi`) VALUES
(1, 'rapot khalila 1', 1, 'khalilahunafa@gmail.com', 3, '2016-05-11 06:48:15', '2016-05-11 06:48:15', NULL),
(2, 'rapot anes 1', 1, 'anestanggang@gmail.com', 3, '2016-05-11 06:48:16', '2016-05-11 06:48:16', NULL),
(3, 'rapot nacil 1', 1, 'nabilaclydea@gmail.com', 3, '2016-05-11 06:48:16', '2016-05-11 06:48:16', NULL),
(4, 'rapot khalila 2', 2, 'khalilahunafa@gmail.com', 1, '2016-05-11 06:48:16', '2016-05-11 06:48:16', NULL),
(5, 'Udh keganti', 2, 'anestanggang@gmail.com', 1, '2016-05-14 14:47:41', '2016-05-11 06:48:16', 'Accountability=30,Communicating=40,Composure=90'),
(6, 'rapot dini 1', 2, 'diniseprilia@gmail.com', 1, '2016-05-11 06:48:16', '2016-05-11 06:48:16', NULL),
(10, '', 12, 'ace@flipbox.co.id', 1, '2016-05-16 06:25:06', '2016-05-16 06:25:06', ''),
(11, ' Coba lagi', 12, 'anestanggang@gmail.com', 1, '2016-05-15 23:31:23', '2016-05-16 06:25:06', 'Accountability=91,Communicating=93,Composure=92'),
(12, '', 12, 'khalilahunafa@gmail.com', 1, '2016-05-16 06:25:07', '2016-05-16 06:25:07', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_form`
--

CREATE TABLE IF NOT EXISTS `report_form` (
  `id_report_form` int(11) NOT NULL AUTO_INCREMENT,
  `id_job_vacant` int(11) NOT NULL,
  PRIMARY KEY (`id_report_form`),
  UNIQUE KEY `id_job_vacant` (`id_job_vacant`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `report_form`
--

INSERT INTO `report_form` (`id_report_form`, `id_job_vacant`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sla`
--

CREATE TABLE IF NOT EXISTS `sla` (
  `id_sla` int(11) NOT NULL AUTO_INCREMENT,
  `nama_tahapan` varchar(70) NOT NULL,
  `jml_hari` smallint(5) NOT NULL,
  PRIMARY KEY (`id_sla`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `sla`
--

INSERT INTO `sla` (`id_sla`, `nama_tahapan`, `jml_hari`) VALUES
(1, 'ApplyToNotify', 1),
(2, 'NotifyToInterview1', 2),
(3, 'Interview1ToInterview2', 2),
(4, 'Interview2ToInterview3', 2),
(5, 'Interview3ToOfferingLetter', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `nama_status` varchar(70) NOT NULL,
  PRIMARY KEY (`id_status`),
  UNIQUE KEY `nama_status` (`nama_status`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id_status`, `nama_status`) VALUES
(1, 'Apply'),
(7, 'Hire'),
(3, 'Interview 1'),
(4, 'Interview 2'),
(5, 'Interview 3'),
(6, 'Offering Letter'),
(2, 'Reject');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_applicant`
--

CREATE TABLE IF NOT EXISTS `status_applicant` (
  `id_applicant_status` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_notifikasi` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_konfirmasi` date DEFAULT NULL,
  `id_sla` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `id_applicant` int(11) NOT NULL,
  `id_job_vacant` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_applicant_status`),
  KEY `id_sla` (`id_sla`),
  KEY `id_status` (`id_status`),
  KEY `id_applicant` (`id_applicant`),
  KEY `id_job_vacant` (`id_job_vacant`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data untuk tabel `status_applicant`
--

INSERT INTO `status_applicant` (`id_applicant_status`, `tgl_notifikasi`, `tgl_konfirmasi`, `id_sla`, `id_status`, `id_applicant`, `id_job_vacant`, `created_at`) VALUES
(1, '2016-05-06 07:04:53', NULL, 1, 1, 1, 3, '2016-05-06 07:04:53'),
(2, '2016-05-06 07:04:54', NULL, 1, 1, 2, 1, '2016-05-06 07:04:54'),
(3, '2016-05-06 07:04:54', NULL, 1, 1, 3, 1, '2016-05-06 07:04:54'),
(4, '2016-05-06 07:04:54', NULL, 1, 1, 4, 4, '2016-05-06 07:04:54'),
(5, '2016-05-06 07:04:54', NULL, 1, 1, 5, 6, '2016-05-06 07:04:54'),
(6, '2016-05-06 07:04:54', NULL, 1, 1, 6, 5, '2016-05-06 07:04:54'),
(7, '2016-05-06 07:04:54', NULL, 1, 1, 7, 4, '2016-05-06 07:04:54'),
(8, '2016-05-06 07:04:54', NULL, 1, 1, 8, 3, '2016-05-06 07:04:54'),
(9, '2016-05-06 07:04:54', NULL, 1, 1, 9, 2, '2016-05-06 07:04:54'),
(10, '2016-05-06 07:04:54', NULL, 1, 1, 10, 2, '2016-05-06 07:04:54'),
(11, '2016-05-08 17:35:50', NULL, 1, 3, 2, 1, '2016-05-08 17:35:50'),
(12, '2016-05-11 07:47:02', NULL, 1, 3, 12, 1, '2016-05-11 07:47:02'),
(13, '2016-05-14 07:45:59', NULL, 1, 3, 3, 1, '2016-05-14 07:45:59'),
(15, '2016-05-16 06:36:39', NULL, 1, 3, 1, 3, '2016-05-16 06:36:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `email_users` varchar(70) NOT NULL,
  `nama_users` varchar(70) NOT NULL,
  `posisi` varchar(70) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `id_divisi` int(11) NOT NULL,
  `role` varchar(70) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` tinyint(1) NOT NULL,
  `password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`email_users`),
  KEY `id_divisi` (`id_divisi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`email_users`, `nama_users`, `posisi`, `is_admin`, `id_divisi`, `role`, `created_at`, `updated_at`, `is_active`, `password`) VALUES
('ace@flipbox.co.id', 'A.C Arsyady', 'Senior PM', 0, 11, 'userhr', '2016-05-06 01:23:32', '0000-00-00 00:00:00', 1, '123456'),
('alfa@flipbox.co.id', 'Krisan Alfa', 'Senior Web Developer', 0, 12, 'userhr', '2016-05-06 01:23:32', '0000-00-00 00:00:00', 1, '123456'),
('anestanggang@gmail.com', 'Yohanes', 'HR', 0, 18, 'hr', '2016-05-06 01:23:32', '0000-00-00 00:00:00', 1, '123456'),
('aqid@flipbox.co.id', 'Bukhori Muhammad', 'CTO', 0, 10, 'userhr', '2016-05-12 11:52:01', '2016-05-12 04:51:14', 1, '123456'),
('bhakti@flipbox.co.id', 'Bhakti Firdaus', 'Head of Design', 0, 14, 'userhr', '2016-05-06 01:23:32', '0000-00-00 00:00:00', 1, '123456'),
('deden@flipbox.co.id', 'Deden Maulana', 'Web Developer', 0, 12, 'userhr', '2016-05-06 01:23:32', '0000-00-00 00:00:00', 1, '123456'),
('diniseprilia@gmail.com', 'Dini Seprilia', 'Tester', 1, 16, 'userhr', '2016-05-06 01:23:32', '0000-00-00 00:00:00', 1, '123456'),
('eriza@flipbox.co.id', 'Eriza Hanif', 'Senior Producer', 0, 20, 'userhr', '2016-05-06 01:23:32', '0000-00-00 00:00:00', 1, '123456'),
('faizal@flipbox.co.id', 'Faizal Rahman', 'Head of UX', 0, 14, 'userhr', '2016-05-09 06:08:38', '2016-05-08 23:08:38', 1, '123456'),
('ferrisaputra24@gmail.com', 'Ferri Saputra', 'System \r\n\r\nDesigner', 1, 19, 'COO', '2016-05-06 01:23:32', '0000-00-00 00:00:00', 1, '123456'),
('fika@flipbox.co.id', 'Fika Marchelita', 'Project Management \r\n\r\nOfficer', 0, 21, 'userhr', '2016-05-06 01:23:32', '0000-00-00 00:00:00', 1, '123456'),
('gilebro@gmail.com', 'Gilebro', 'Aje gile', 0, 2, 'userhr', '2016-05-16 07:06:27', '2016-05-16 00:06:27', 0, '123456'),
('kers@flipbox.co.id', 'Putri Kers', 'Account Manager', 0, 15, 'userhr', '2016-05-06 01:23:32', '0000-00-00 00:00:00', 1, '123456'),
('khalilahunafa@gmail.com', 'Khalila Hunafa', 'COO', 1, 41, 'COO', '2016-05-09 19:24:22', '0000-00-00 00:00:00', 1, '123456'),
('lisa@flipbox.co.id', 'Cut Syahlisa', 'HR', 0, 18, 'userhr', '2016-05-06 01:23:32', '0000-00-00 00:00:00', 1, '123456'),
('lutfi@flipbox.co.id', 'Lutfi Aziz', 'Designer', 0, 13, 'userhr', '2016-05-06 01:23:32', '0000-00-00 00:00:00', 1, '123456'),
('magda@flipbox.co.id', 'Maryam Magda', 'QA', 0, 16, 'userhr', '2016-05-06 01:23:32', '0000-00-00 00:00:00', 1, '123456'),
('nabilaclydea@gmail.com', 'Nabila Clydea', 'UI/UX', 1, 24, 'userhr', '2016-05-06 01:23:32', '0000-00-00 00:00:00', 1, '123456'),
('novanto@flipbox.co.id', 'Novanto Ji', 'Mobile Developer', 0, 17, 'userhr', '2016-05-06 01:23:32', '0000-00-00 00:00:00', 1, '123456'),
('rocky@flipbox.co.id', 'Rocky S', 'GA', 0, 18, 'userhr', '2016-05-06 01:23:32', '0000-00-00 00:00:00', 1, '123456'),
('tommi@flipbox.co.id', 'Irvan Tommi', 'Junior Mobile \r\n\r\nDeveloper', 0, 17, 'userhr', '2016-05-06 01:23:32', '0000-00-00 00:00:00', 1, '123456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `work_experience`
--

CREATE TABLE IF NOT EXISTS `work_experience` (
  `id_work_exp` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(70) DEFAULT NULL,
  `company` varchar(70) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `id_applicant` int(11) NOT NULL,
  PRIMARY KEY (`id_work_exp`),
  KEY `id_applicant` (`id_applicant`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `applicant`
--
ALTER TABLE `applicant`
  ADD CONSTRAINT `applicant_ibfk_1` FOREIGN KEY (`id_job_vacant`) REFERENCES `job_vacant` (`id_job_vacant`),
  ADD CONSTRAINT `applicant_ibfk_2` FOREIGN KEY (`status_ter_update`) REFERENCES `status` (`id_status`);

--
-- Ketidakleluasaan untuk tabel `available_schedule`
--
ALTER TABLE `available_schedule`
  ADD CONSTRAINT `available_schedule_ibfk_1` FOREIGN KEY (`email_users`) REFERENCES `users` (`email_users`),
  ADD CONSTRAINT `available_schedule_ibfk_2` FOREIGN KEY (`id_job_vacant`) REFERENCES `job_vacant` (`id_job_vacant`);

--
-- Ketidakleluasaan untuk tabel `competency_used`
--
ALTER TABLE `competency_used`
  ADD CONSTRAINT `competency_used_ibfk_1` FOREIGN KEY (`id_kompetensi`) REFERENCES `competency` (`id_kompetensi`),
  ADD CONSTRAINT `competency_used_ibfk_2` FOREIGN KEY (`id_report_form`) REFERENCES `report_form` (`id_report_form`);

--
-- Ketidakleluasaan untuk tabel `divisi`
--
ALTER TABLE `divisi`
  ADD CONSTRAINT `divisi_ibfk_1` FOREIGN KEY (`id_company`) REFERENCES `company` (`id_company`);

--
-- Ketidakleluasaan untuk tabel `interview`
--
ALTER TABLE `interview`
  ADD CONSTRAINT `interview_ibfk_1` FOREIGN KEY (`id_applicant`) REFERENCES `applicant` (`id_applicant`),
  ADD CONSTRAINT `interview_ibfk_2` FOREIGN KEY (`id_av_schedule`) REFERENCES `available_schedule` (`id_av_schedule`);

--
-- Ketidakleluasaan untuk tabel `involved_interview`
--
ALTER TABLE `involved_interview`
  ADD CONSTRAINT `involved_interview_ibfk_1` FOREIGN KEY (`id_wawancara`) REFERENCES `interview` (`id_wawancara`),
  ADD CONSTRAINT `involved_interview_ibfk_2` FOREIGN KEY (`email_users`) REFERENCES `users` (`email_users`);

--
-- Ketidakleluasaan untuk tabel `involved_job_vacant`
--
ALTER TABLE `involved_job_vacant`
  ADD CONSTRAINT `involved_job_vacant_ibfk_1` FOREIGN KEY (`id_job_vacant`) REFERENCES `job_vacant` (`id_job_vacant`),
  ADD CONSTRAINT `involved_job_vacant_ibfk_2` FOREIGN KEY (`email_users`) REFERENCES `users` (`email_users`);

--
-- Ketidakleluasaan untuk tabel `job_vacant`
--
ALTER TABLE `job_vacant`
  ADD CONSTRAINT `job_vacant_ibfk_1` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id_divisi`);

--
-- Ketidakleluasaan untuk tabel `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`id_applicant`) REFERENCES `applicant` (`id_applicant`),
  ADD CONSTRAINT `report_ibfk_2` FOREIGN KEY (`email_users`) REFERENCES `users` (`email_users`),
  ADD CONSTRAINT `report_ibfk_3` FOREIGN KEY (`id_report_form`) REFERENCES `report_form` (`id_report_form`);

--
-- Ketidakleluasaan untuk tabel `report_form`
--
ALTER TABLE `report_form`
  ADD CONSTRAINT `report_form_ibfk_1` FOREIGN KEY (`id_job_vacant`) REFERENCES `job_vacant` (`id_job_vacant`);

--
-- Ketidakleluasaan untuk tabel `status_applicant`
--
ALTER TABLE `status_applicant`
  ADD CONSTRAINT `status_applicant_ibfk_1` FOREIGN KEY (`id_sla`) REFERENCES `sla` (`id_sla`),
  ADD CONSTRAINT `status_applicant_ibfk_2` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`),
  ADD CONSTRAINT `status_applicant_ibfk_3` FOREIGN KEY (`id_applicant`) REFERENCES `applicant` (`id_applicant`),
  ADD CONSTRAINT `status_applicant_ibfk_4` FOREIGN KEY (`id_job_vacant`) REFERENCES `job_vacant` (`id_job_vacant`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id_divisi`);

--
-- Ketidakleluasaan untuk tabel `work_experience`
--
ALTER TABLE `work_experience`
  ADD CONSTRAINT `work_experience_ibfk_1` FOREIGN KEY (`id_applicant`) REFERENCES `applicant` (`id_applicant`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
