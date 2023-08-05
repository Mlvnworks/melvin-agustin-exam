-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2023 at 06:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channels`
--

CREATE TABLE `youtube_channels` (
  `profile_picture` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `youtube_channels`
--

INSERT INTO `youtube_channels` (`profile_picture`, `name`, `description`) VALUES
('https://yt3.ggpht.com/urNLBJGryDamao5r0jmlTg84mIBOoaeJd6XR67j4nuRd0iRvv5g-MUgaowsWKCs8V_t4KwST=s88-c-k-c0x00ffffff-no-rj', 'NBA', 'The NBA is the premier professional basketball league in the United States and Canada. The league is truly global, with games and programming in 215 countries and territories in 47 languages. The NBA consists of 30 teams. The NBA offers real time access to live regular season NBA games with a subscription to NBA LEAGUE PASS, available globally for TV, broadband, and mobile.  Real-time Stats, Scores, Highlights and more are available to fans on web and mobile with the NBA App. \n\nFor news, stories, highlights and more, go to our official website at https://app.link.nba.com/e/NBA_site\n');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channel_videos`
--

CREATE TABLE `youtube_channel_videos` (
  `video_link` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `youtube_channel_videos`
--

INSERT INTO `youtube_channel_videos` (`video_link`, `title`, `description`, `thumbnail`) VALUES
('https://www.youtube.com/watch?v=5VfTfGeO2T4', '#USABMNT putting in work! 🔥 | #Shorts', '', 'https://i.ytimg.com/vi/5VfTfGeO2T4/default.jpg'),
('https://www.youtube.com/watch?v=RuJidssRP8g', '#USABMNT Team Photos! 🇺🇸 | #Shorts', '', 'https://i.ytimg.com/vi/RuJidssRP8g/default.jpg'),
('https://www.youtube.com/watch?v=-0rPCoDd-eM', 'Jayson Tatum, Jaylen Brown &amp;amp; Kyle Kuzma… First to 5 at a 2019 USAB practice! 👀 | #Shorts', '', 'https://i.ytimg.com/vi/-0rPCoDd-eM/default.jpg'),
('https://www.youtube.com/watch?v=diDczg0VCEI', 'When Celebrities SHOWED OUT | 2022-23 NBA Season | #BestOfNBA', 'Take a look back at the best moments from celebrities attending NBA games this season! Never miss a moment with the latest ...', 'https://i.ytimg.com/vi/diDczg0VCEI/default.jpg'),
('https://www.youtube.com/watch?v=6GJORDPSCAM', 'Austin Reaves’ Most HYPED Moments of the 2022-23 NBA Season | #BestOfNBA', 'Take a look at some of Austin Reaves&#039; hyping up the crowd plays from the 2022-23 NBA season! Never miss a moment with the ...', 'https://i.ytimg.com/vi/6GJORDPSCAM/default.jpg'),
('https://www.youtube.com/watch?v=qxIXQMiNO88', 'A clutch block or a big dunk? 🤔Jaden Ivey breaks down both 🔥 | #Shorts', '', 'https://i.ytimg.com/vi/qxIXQMiNO88/default.jpg'),
('https://www.youtube.com/watch?v=Yx4kBc87baU', 'The #USABMNT got better today at the 1st practice for the FIBA World Cup! 🇺🇸🔥| #Shorts', '', 'https://i.ytimg.com/vi/Yx4kBc87baU/default.jpg'),
('https://www.youtube.com/watch?v=6c-XY63IP-U', 'LeBron James helps Lil Chris find Chris Paul on the #USABMNT plane in 2012.🥹| #Shorts', '', 'https://i.ytimg.com/vi/6c-XY63IP-U/default.jpg'),
('https://www.youtube.com/watch?v=a7RyLRTgpxg', 'Brandon Ingram &amp;amp; Paolo Banchero putting in WORK at the #USABMNT practice! 🇺🇸🔥| #Shorts', '', 'https://i.ytimg.com/vi/a7RyLRTgpxg/default.jpg'),
('https://www.youtube.com/watch?v=6V6p0CgvRwY', 'Shaq couldn’t be stopped 1-on-1 in 1996 at The #USABMNT Training Camp! 😳| #Shorts', '', 'https://i.ytimg.com/vi/6V6p0CgvRwY/default.jpg'),
('https://www.youtube.com/watch?v=KTHeff4XK00', 'The #USABMNT arrives for the first practice in Las Vegas! 🔥| #Shorts', '', 'https://i.ytimg.com/vi/KTHeff4XK00/default.jpg'),
('https://www.youtube.com/watch?v=ywAOb_jGa_Y', 'Lauri Markkanen&amp;#39;s Most VICIOUS Poster Dunks of the 2022-23 NBA Season | #BestOfNBA', 'Take a look at Lauri Markkanen&#039;s best poster dunks from the 2022-23 NBA Season! Never miss a moment with the latest news, ...', 'https://i.ytimg.com/vi/ywAOb_jGa_Y/default.jpg'),
('https://www.youtube.com/watch?v=JcQE-R3amWQ', 'Kobe Bryant &amp;amp; Pau Gasol’s chemistry was on another level! 🙌🐍| #Shorts', '', 'https://i.ytimg.com/vi/JcQE-R3amWQ/default.jpg'),
('https://www.youtube.com/watch?v=TFhqOqPfq7Q', 'Damian Lillard&amp;#39;s Best Long Range Threes | 2022-23 NBA Season | #BestOfNBA', 'Take a look at Damian Lillard&#039;s best long range threes from the 2022-23 NBA Season! Never miss a moment with the latest news, ...', 'https://i.ytimg.com/vi/TFhqOqPfq7Q/default.jpg'),
('https://www.youtube.com/watch?v=WWuZl-aMjuo', 'The #BestOfNBA Increasingly Impressive Handles of the 2022-23 Season! 👀😳| #Shorts', '', 'https://i.ytimg.com/vi/WWuZl-aMjuo/default.jpg'),
('https://www.youtube.com/watch?v=40WmtrrhLbs', 'Vince Carter in 2000 was INSANE 🔥 The dunk or the celebration… 👀 | #Shorts', '', 'https://i.ytimg.com/vi/40WmtrrhLbs/default.jpg'),
('https://www.youtube.com/watch?v=j0t4NtTb6SE', 'When Former Teammates Reunited | 2022-23 NBA Season | #BestOfNBA', 'Take a look at some of the best moments between former teammates from this season! Never miss a moment with the latest news, ...', 'https://i.ytimg.com/vi/j0t4NtTb6SE/default.jpg'),
('https://www.youtube.com/watch?v=Xz9SIkPyy04', '“Get this on tape” - Deron Williams helps carry Jason Kidd’s bag in 2006 😂 | #Shorts', '', 'https://i.ytimg.com/vi/Xz9SIkPyy04/default.jpg'),
('https://www.youtube.com/watch?v=W5TRxgc3Vqc', 'Steph knew his limits before attempting a flashy warmup dunk in 2014 🤣 | #Shorts', '', 'https://i.ytimg.com/vi/W5TRxgc3Vqc/default.jpg'),
('https://www.youtube.com/watch?v=Fu7oIJVIWYA', 'Every Time Klay Thompson Made A Paper Airplane During A Press Conference | #BestOfNBA', 'Check out Klay Thompson&#039;s most hilarious paper airplane moments of the 2022-23 NBA season! Never miss a moment with the ...', 'https://i.ytimg.com/vi/Fu7oIJVIWYA/default.jpg'),
('https://www.youtube.com/watch?v=EQIhgEAyomI', 'Tyrese Haliburton&amp;#39;s Most Impressive Handles of the 2022-23 NBA Season | #BestOfNBA', 'Take a look at Tyrese Haliburton&#039;s best handles from the 2022-23 NBA season! Never miss a moment with the latest news, ...', 'https://i.ytimg.com/vi/EQIhgEAyomI/default.jpg'),
('https://www.youtube.com/watch?v=lXw1E-1d4XQ', 'Blake Griffin put on a SHOW for future NBA stars in 2012! 👀 | #Shorts', '', 'https://i.ytimg.com/vi/lXw1E-1d4XQ/default.jpg'),
('https://www.youtube.com/watch?v=6Lysnoba2YA', 'Marcus Smart, Jaylen Brown &amp;amp; Harrison Barnes… First to 5 at a 2019 USAB practice! 👀 | #Shorts', '', 'https://i.ytimg.com/vi/6Lysnoba2YA/default.jpg'),
('https://www.youtube.com/watch?v=DN5hfMzSzLU', 'Throwback to Coach Pop leading warmups with the 2006 Spurs! 👏 | #Shorts', '', 'https://i.ytimg.com/vi/DN5hfMzSzLU/default.jpg'),
('https://www.youtube.com/watch?v=SKueSspXj8g', 'Buddy’s Tip-Off Bucket 🔥 | Players Choice Video Breakdown | #Shorts', '', 'https://i.ytimg.com/vi/SKueSspXj8g/default.jpg'),
('https://www.youtube.com/watch?v=ZGpAlHElMnU', 'Nikola Jokic’s Best Full Court DIMES from the 2022-23 NBA Season | #BestOfNBA', 'Take a look at some of Nikola Jokic&#039;s best long distance assists from the 2022-23 NBA Season! Never miss a moment with the ...', 'https://i.ytimg.com/vi/ZGpAlHElMnU/default.jpg'),
('https://www.youtube.com/watch?v=MUMgYMLbcGE', 'The energy has been unmatched all summer at the Nike #NYvsNY events! 🔥| #Shorts', '', 'https://i.ytimg.com/vi/MUMgYMLbcGE/default.jpg'),
('https://www.youtube.com/watch?v=2vfsDrZieuI', 'Team Canada prepping for the 2023 FIBA World Cup! 🇨🇦 | #Shorts', '', 'https://i.ytimg.com/vi/2vfsDrZieuI/default.jpg'),
('https://www.youtube.com/watch?v=0BhcHt7V9sA', 'From 2001 to 2019 ➡️ Pau Gasol Made An Impact In The NBA! 😤| #Shorts', '', 'https://i.ytimg.com/vi/0BhcHt7V9sA/default.jpg'),
('https://www.youtube.com/watch?v=3SeLsqzdYOE', 'Dwyane Wade Reflects On His “Welcome To The NBA” Moment🔥 Playing Against Allen Iverson! | #Shorts', '', 'https://i.ytimg.com/vi/3SeLsqzdYOE/default.jpg'),
('https://www.youtube.com/watch?v=UHhR_GQfx3s', 'The Best NBA Fan Interactions from the 2022-23 NBA Season | #BestOfNBA', 'Take a look at some of the best moments of players interacting with fans from the 2022-23 NBA Season! Never miss a moment ...', 'https://i.ytimg.com/vi/UHhR_GQfx3s/default.jpg'),
('https://www.youtube.com/watch?v=Rt0JrOx1scM', '“We’re Still Taking Applications” -Throwback Moment Between Steph Curry &amp;amp; DeMarcus Cousins!| #Shorts', '', 'https://i.ytimg.com/vi/Rt0JrOx1scM/default.jpg'),
('https://www.youtube.com/watch?v=v12ktvh17GE', 'From 1999 to 2019 ➡️ Dirk Nowitzki Put The Ball In The Basket! 🙌🔥| #Shorts', '', 'https://i.ytimg.com/vi/v12ktvh17GE/default.jpg'),
('https://www.youtube.com/watch?v=vwFUyTLQxAU', 'When this young fan went viral after sitting next to LeBron James! | #BestOfNBA', 'Young fan calls sitting next to LeBron the greatest moment in her life Never miss a moment with the latest news, trending stories ...', 'https://i.ytimg.com/vi/vwFUyTLQxAU/default.jpg'),
('https://www.youtube.com/watch?v=Gg43QDG5Y_A', 'Buddy Hield Set The Record For The Fastest 3-pointer ever! 😳 #BestOfNBA| #Shorts', '', 'https://i.ytimg.com/vi/Gg43QDG5Y_A/default.jpg'),
('https://www.youtube.com/watch?v=b8ztJCPddfQ', 'The #USABMNT took in one of the seven wonders of the world in Rio for the 2016 Olympics!| #Shorts', '', 'https://i.ytimg.com/vi/b8ztJCPddfQ/default.jpg'),
('https://www.youtube.com/watch?v=Im586JaZzrY', '10 Minutes Of De&amp;#39;Aaron Fox’s Fastest Moments of the 2022-23 NBA Season | #BestOfNBA', 'The Best De&#039;Aaron Fox moments of the 2022-23 NBA Season! Never miss a moment with the latest news, trending stories and ...', 'https://i.ytimg.com/vi/Im586JaZzrY/default.jpg'),
('https://www.youtube.com/watch?v=UYIAKob1QWM', 'Paolo Banchero Reacts To His POSTER SLAM! 😳😤| #Shorts', '', 'https://i.ytimg.com/vi/UYIAKob1QWM/default.jpg'),
('https://www.youtube.com/watch?v=aRXRBdqjOdk', 'Paul George &amp;amp; Kawhi Leonard&amp;#39;s Most AUTHORITATIVE Finishes | #BestOfNBA', 'Paul George &amp; Kawhi Leonard&#039;s Most AUTHORITATIVE Finishes of the 2022-23 NBA Season! Never miss a moment with the ...', 'https://i.ytimg.com/vi/aRXRBdqjOdk/default.jpg'),
('https://www.youtube.com/watch?v=dL8ZhKttF4k', '“Just a lot of talent.” 💯 Some of the best 1-on-1 matchups at the 2018 #USABMNT! 😤| #Shorts', '', 'https://i.ytimg.com/vi/dL8ZhKttF4k/default.jpg'),
('https://www.youtube.com/watch?v=l-4fezQ_Aw8', 'DeMar DeRozan Gets BUCKETS In The Drew League 🔥 | 33 PTS &amp;amp; 8 REB', '33 points &amp; 8 rebounds for DeMar DeRozan as Cheaters Basketball remain undefeated at Drew League #NBASummer Never ...', 'https://i.ytimg.com/vi/l-4fezQ_Aw8/default.jpg'),
('https://www.youtube.com/watch?v=uoRRnD6Ce-s', 'DeMar DeRozan GOES OFF for 33 PTS in his Drew League return! 🔥 | #Shorts', '', 'https://i.ytimg.com/vi/uoRRnD6Ce-s/default.jpg'),
('https://www.youtube.com/watch?v=Xv36l78ORkM', 'AJ Dybantsa Throws Down The Between The Legs Slam At The Drew League! 😳😤| #Shorts', '', 'https://i.ytimg.com/vi/Xv36l78ORkM/default.jpg'),
('https://www.youtube.com/watch?v=VWS5hQWYg4A', 'RJ Barrett’s #NBASummer Grind with skills trainer Drew Hanlen! 😤| #Shorts', '', 'https://i.ytimg.com/vi/VWS5hQWYg4A/default.jpg'),
('https://www.youtube.com/watch?v=vWoHrCRFeoc', 'MarJon Beauchamp drops 83 PTS to set Crawsover League Record! 👏 | #Shorts', '', 'https://i.ytimg.com/vi/vWoHrCRFeoc/default.jpg'),
('https://www.youtube.com/watch?v=Hh6ywzjkEV0', 'MarJon Beauchamp Scores A Crawsover League Record 83 Points!', 'In his Crawsover debut, MarJon Beauchamp of the Milwaukee Bucks set a new Crawsover league record of 83 points. Never miss ...', 'https://i.ytimg.com/vi/Hh6ywzjkEV0/default.jpg'),
('https://www.youtube.com/watch?v=YieIAChhD4w', 'How many dribbles do you need to score ? 🤔 Take a look back at the 2015 #USABMNT! 😤| #Shorts', '', 'https://i.ytimg.com/vi/YieIAChhD4w/default.jpg'),
('https://www.youtube.com/watch?v=jBCVNVGrfjM', 'The Best 1-On-1 Moments of the 2022-23 NBA Season | #BestOfNBA', 'Take a look at some of the top 1-on-1 moments from the 2022-23 NBA Season! Never miss a moment with the latest news, ...', 'https://i.ytimg.com/vi/jBCVNVGrfjM/default.jpg'),
('https://www.youtube.com/watch?v=iDuVJTi5W7E', 'The Best Luka &amp;quot;Magic&amp;quot; Moments of the 2022-23 NBA Season | #BestOfNBA', 'Take a look at some of Luka Doncic&#039;s top moments from the 2022-23 NBA Season! Never miss a moment with the latest news, ...', 'https://i.ytimg.com/vi/iDuVJTi5W7E/default.jpg'),
('https://www.youtube.com/watch?v=_2_8aftsPRo', 'Tyler Herro’s #NBASummer Grind with skills trainer Drew Hanlen!😤| #Shorts', '', 'https://i.ytimg.com/vi/_2_8aftsPRo/default.jpg'),
('https://www.youtube.com/watch?v=LYS9IF1aqcY', 'Andre Drummond Draining 3️⃣’s in Miami Pro-Am! 👀 | #Shorts', '', 'https://i.ytimg.com/vi/LYS9IF1aqcY/default.jpg'),
('https://www.youtube.com/watch?v=zrETVA1ld60', 'Scottie Barnes SHOWS OUT In Miami Pro League Debut 🔥', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/zrETVA1ld60/default.jpg'),
('https://www.youtube.com/watch?v=vau66n0lCOs', 'Kevin Durant &amp;amp; Devin Booker&amp;#39;s Toughest Buckets of the 2022-23 NBA Season | #BestOfNBA', 'Check out some of the toughest jumpers from Devin Booker and Kevin Durant from this season! Never miss a moment with the ...', 'https://i.ytimg.com/vi/vau66n0lCOs/default.jpg'),
('https://www.youtube.com/watch?v=tLNNey3Zxdo', '25 Minutes of the WILDEST Made Shots of the 2022-23 NBA Season | #BestOfNBA', 'Take a look at some of the best HORSE shots from this season! Never miss a moment with the latest news, trending stories and ...', 'https://i.ytimg.com/vi/tLNNey3Zxdo/default.jpg'),
('https://www.youtube.com/watch?v=BpeTKmNkBgQ', 'The Best Jimmy &amp;quot;Freakin&amp;quot; Butler Moments of the 2022-23 NBA Season | #BestOfNBA', 'Take a look at some of Jimmy Butler&#039;s top moments from the 2022-23 NBA Season! Never miss a moment with the latest news, ...', 'https://i.ytimg.com/vi/BpeTKmNkBgQ/default.jpg'),
('https://www.youtube.com/watch?v=Em_Y2X31bAM', 'The Deepest Shots of the 2022-23 NBA Season | #BestOfNBA', '', 'https://i.ytimg.com/vi/Em_Y2X31bAM/default.jpg'),
('https://www.youtube.com/watch?v=AFVMmjRyzpg', 'Joel Embiid’s Most Dominant Plays of the 2022-23 NBA Season | #BestOfNBA', '', 'https://i.ytimg.com/vi/AFVMmjRyzpg/default.jpg'),
('https://www.youtube.com/watch?v=HvnCnYL5B5U', 'The Top Uncut Moments of the 2022-23 NBA Season | #BestOfNBA', 'Take a look at the top uncut moments from the 2022-23 NBA season! Never miss a moment with the latest news, trending stories ...', 'https://i.ytimg.com/vi/HvnCnYL5B5U/default.jpg'),
('https://www.youtube.com/watch?v=oG178ObOcrA', 'Stephen Curry&amp;#39;s Most Impressive Handles of the 2022-23 NBA Season | #BestOfNBA', 'Take a look at some of the best handles from Stephen Curry from the 2022-23 NBA Season! Never miss a moment with the latest ...', 'https://i.ytimg.com/vi/oG178ObOcrA/default.jpg'),
('https://www.youtube.com/watch?v=ukcvOEPgB60', 'Giannis Antetokounmpo&amp;#39;s Most &amp;quot;Freakish&amp;quot; Plays of the 2022-23 NBA Season | #BestOfNBA', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/ukcvOEPgB60/default.jpg'),
('https://www.youtube.com/watch?v=oA8e0x2vZOs', 'Nikola Jokic&amp;#39;s Best &amp;quot;Point Forward&amp;quot; Moments of the 2022-23 NBA Season | #BestOfNBA', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/oA8e0x2vZOs/default.jpg'),
('https://www.youtube.com/watch?v=ucZZdf94LbI', '#8 HEAT at #1 NUGGETS | FULL GAME 5 HIGHLIGHTS | June 12, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/ucZZdf94LbI/default.jpg'),
('https://www.youtube.com/watch?v=Y0p8PzJ2eMw', '#1 NUGGETS at #8 HEAT | FULL GAME 4 HIGHLIGHTS | June 9, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/Y0p8PzJ2eMw/default.jpg'),
('https://www.youtube.com/watch?v=pjSflSwIDEc', '#8 HEAT at #1 NUGGETS | FULL GAME 2 HIGHLIGHTS | June 4, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/pjSflSwIDEc/default.jpg'),
('https://www.youtube.com/watch?v=aJ45JPNpNPs', 'LeBron James Makes History &amp;amp; Leads Lakers To The #NBAConferenceFinals! | May 12, 2023', 'LeBron James has now won 41 Playoff series in his career, passing Derek Fisher (40) for the most in NBA history. LeBron James ...', 'https://i.ytimg.com/vi/aJ45JPNpNPs/default.jpg'),
('https://www.youtube.com/watch?v=zitBEGqiRCY', 'NBA&amp;#39;s Top 5 Plays Of The Night | May 11, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/zitBEGqiRCY/default.jpg'),
('https://www.youtube.com/watch?v=oTufGVSzbKk', '#1 NUGGETS at #4 SUNS | FULL GAME 6 HIGHLIGHTS | May 11, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/oTufGVSzbKk/default.jpg'),
('https://www.youtube.com/watch?v=rMQC1BY53tI', '#2 CELTICS at #3 76ERS | FULL GAME 6 HIGHLIGHTS | May 11, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/rMQC1BY53tI/default.jpg'),
('https://www.youtube.com/watch?v=zi1H-Ye5WeQ', '#8 HEAT at #5 KNICKS | FULL GAME 5 HIGHLIGHTS | May 10, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/zi1H-Ye5WeQ/default.jpg'),
('https://www.youtube.com/watch?v=P2RVD7-ReFU', 'NBA&amp;#39;s Top 10 Plays Of The Night | May 9, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/P2RVD7-ReFU/default.jpg'),
('https://www.youtube.com/watch?v=KUzbtu-fvpA', '#3 76ERS at #2 CELTICS | FULL GAME 5 HIGHLIGHTS | May 9, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/KUzbtu-fvpA/default.jpg'),
('https://www.youtube.com/watch?v=rqDZ_W_r52w', 'Final 2:09 WILD ENDING #6 Warriors vs #7 Lakers Game 4! | May 8, 2023', 'The Los Angeles Lakers defeated the Golden State Warriors in Game 4, 104-101. LeBron James led the Lakers with 27 points, ...', 'https://i.ytimg.com/vi/rqDZ_W_r52w/default.jpg'),
('https://www.youtube.com/watch?v=ktIWbf2YsO8', '#5 KNICKS at #8 HEAT | FULL GAME 3 HIGHLIGHTS | May 6, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/ktIWbf2YsO8/default.jpg'),
('https://www.youtube.com/watch?v=OhUQtLaQAs4', '#1 NUGGETS at #4 SUNS  | FULL GAME 3 HIGHLIGHTS | May 5, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/OhUQtLaQAs4/default.jpg'),
('https://www.youtube.com/watch?v=9hTzs3II9dw', '#2 CELTICS at #3 76ERS  | FULL GAME 2 HIGHLIGHTS | May 5, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/9hTzs3II9dw/default.jpg'),
('https://www.youtube.com/watch?v=9EOC_596j_M', 'Final 2:56 WILD ENDING #7 Lakers vs #6 Warriors - Game 1! | May 2, 2023', 'Led by Anthony Davis&#039;s 30 points and 23 rebounds, the No. 7 seed Los Angeles Lakers defeat the No. 6 seed Golden State ...', 'https://i.ytimg.com/vi/9EOC_596j_M/default.jpg'),
('https://www.youtube.com/watch?v=V4jHOxR8u0c', 'Final 2:40 WILD ENDING #8 HEAT vs #5 KNICKS - Game 2! | May 2, 2023', 'Led by Jalen Brunson&#039;s 30 points, 5 rebounds and 6 3pt. FG, the No. 5 seed New York Knicks defeat the No. 8 seed Miami Heat in ...', 'https://i.ytimg.com/vi/V4jHOxR8u0c/default.jpg'),
('https://www.youtube.com/watch?v=WPLmAQFyVIA', 'Final 6:10 of Game 7 of the 2016 NBA Finals (Extended Version)', 'Ahead of LeBron &amp; Warriors meeting up again, we flashback to the final minutes of Game 7 of the NBA Finals where 2 of the best ...', 'https://i.ytimg.com/vi/WPLmAQFyVIA/default.jpg'),
('https://www.youtube.com/watch?v=-lhiJVkyoCk', 'NBA Top 5 Plays Of The Night | May 1, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/-lhiJVkyoCk/default.jpg'),
('https://www.youtube.com/watch?v=5eHJIpj8fl8', '#4 SUNS at #1 NUGGETS | FULL GAME 2 HIGHLIGHTS | May 1, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/5eHJIpj8fl8/default.jpg'),
('https://www.youtube.com/watch?v=hiPv0MPRfcw', 'Final 2:46 WILD ENDING #3 76ERS vs #2 CELTICS - Game 1! | May 1, 2023', 'Led by James Harden&#039;s Playoff career-high tying 45 points, the Philadelphia 76ers defeated the Boston Celtics in Game 1, ...', 'https://i.ytimg.com/vi/hiPv0MPRfcw/default.jpg'),
('https://www.youtube.com/watch?v=G2Vdw9flATQ', '#3 76ERS at #2 CELTICS | FULL GAME 1 HIGHLIGHTS | May 1, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/G2Vdw9flATQ/default.jpg'),
('https://www.youtube.com/watch?v=JKajbTxAk5I', '#6 WARRIORS at #3 KINGS | FULL GAME 7 HIGHLIGHTS | April 30, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/JKajbTxAk5I/default.jpg'),
('https://www.youtube.com/watch?v=bissN6MzK1I', '#8 HEAT at #5 KNICKS | FULL GAME 1 HIGHLIGHTS | April 30, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/bissN6MzK1I/default.jpg'),
('https://www.youtube.com/watch?v=Sh4IPUyFjWk', 'NBA Top 5 Plays Of The Night | April 29, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/Sh4IPUyFjWk/default.jpg'),
('https://www.youtube.com/watch?v=Q-fdOHSMk_Y', '#2 GRIZZLIES at #7 LAKERS | FULL GAME 6 HIGHLIGHTS | April 28, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/Q-fdOHSMk_Y/default.jpg'),
('https://www.youtube.com/watch?v=rh3jzNOWvcA', '#2 CELTICS at #7 HAWKS | FULL GAME 6 HIGHLIGHTS | April 27, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/rh3jzNOWvcA/default.jpg'),
('https://www.youtube.com/watch?v=upCaQxwuwB4', 'NBA Top 10 Plays Of The Night | April 26, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/upCaQxwuwB4/default.jpg'),
('https://www.youtube.com/watch?v=imR3k4jog4U', '#8 HEAT at #1 BUCKS | FULL GAME 5 HIGHLIGHTS | April 26, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/imR3k4jog4U/default.jpg'),
('https://www.youtube.com/watch?v=R0d-PK1iI8U', 'Final 3:13 INSANE End of Regulation Heat vs Bucks Game 5 UNCUT | April 26, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/R0d-PK1iI8U/default.jpg'),
('https://www.youtube.com/watch?v=EEdLp12pgC4', '#5 KNICKS at #4 CAVALIERS | FULL GAME 5 HIGHLIGHTS | April 26, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/EEdLp12pgC4/default.jpg'),
('https://www.youtube.com/watch?v=v007awlhGbc', 'Final 4:02 WILD ENDING #8 Timberwolves vs #1 Nuggets | April 25, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/v007awlhGbc/default.jpg'),
('https://www.youtube.com/watch?v=nOyVgk4Jgjo', '#8 TIMBERWOLVES at #1 NUGGETS | FULL GAME 5 HIGHLIGHTS | April 25, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/nOyVgk4Jgjo/default.jpg'),
('https://www.youtube.com/watch?v=_Dnej9Hnyq4', '#7 HAWKS at #2 CELTICS | FULL GAME 5 HIGHLIGHTS | April 25, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/_Dnej9Hnyq4/default.jpg'),
('https://www.youtube.com/watch?v=tHmTCLI9JJE', 'NBA Top 10 Plays Of The Night | April 24, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/tHmTCLI9JJE/default.jpg'),
('https://www.youtube.com/watch?v=aTTuaHvdSQU', '#4 SUNS at #5 CLIPPERS | FULL GAME 4 HIGHLIGHTS | April 22, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/aTTuaHvdSQU/default.jpg'),
('https://www.youtube.com/watch?v=anBMIuUrDiM', '#2 CELTICS at #7 HAWKS | FULL GAME 3 HIGHLIGHTS | April 21, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/anBMIuUrDiM/default.jpg'),
('https://www.youtube.com/watch?v=Wp69xUhRWXY', 'NBA Top 10 Plays Of The Night | April 20, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/Wp69xUhRWXY/default.jpg'),
('https://www.youtube.com/watch?v=cMTfKlGAIXk', '#4 SUNS at #5 CLIPPERS | FULL GAME 3 HIGHLIGHTS | April 20, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/cMTfKlGAIXk/default.jpg'),
('https://www.youtube.com/watch?v=BtFyPcZdhMQ', 'HAWKS at HEAT | #ATTPlayIn | FULL GAME HIGHLIGHTS | April 11, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/BtFyPcZdhMQ/default.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
