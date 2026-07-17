import clsx from 'clsx';
import Heading from '@theme/Heading';
import useBaseUrl from '@docusaurus/useBaseUrl';
import styles from './styles.module.css';

const FeatureList = [
  {
    title: 'Complete Syntax Reference',
    img: 'img/wiki/stampmaker.png',
    description: (
      <>
        Every BASIC-256 statement, function, and operator documented with
        format, description, and runnable example code.
      </>
    ),
  },
  {
    title: 'Learn by Example',
    img: 'img/wiki/gamesballoons.png',
    description: (
      <>
        Sample programs and graphics galleries show what BASIC-256 can do,
        from simple games to sprite animation and generative art.
      </>
    ),
  },
  {
    title: 'In Your Language',
    img: 'img/wiki/jmreneau_mobius.png',
    description: (
      <>
        Documentation available in English, French, German, Dutch, and
        Russian, migrated from the original BASIC-256 wiki.
      </>
    ),
  },
];

function Feature({img, title, description}) {
  return (
    <div className={clsx('col col--4')}>
      <div className="text--center">
        <img className={styles.featureSvg} src={useBaseUrl(img)} alt={title} />
      </div>
      <div className="text--center padding-horiz--md">
        <Heading as="h3">{title}</Heading>
        <p>{description}</p>
      </div>
    </div>
  );
}

export default function HomepageFeatures() {
  return (
    <section className={styles.features}>
      <div className="container">
        <div className="row">
          {FeatureList.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}
