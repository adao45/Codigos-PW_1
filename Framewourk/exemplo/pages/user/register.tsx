import styles from '@/styles/register.module.css';
import Head from 'next/head'

export default function registerPage(){

    return(
        <main className='flex min-h-screen flex-col'>
            <Head>
                <title> Cadastro</title>
            </Head>
            <div className={styles.container}>
                <h1>Hello World</h1>

            </div>

        </main>
    )
}