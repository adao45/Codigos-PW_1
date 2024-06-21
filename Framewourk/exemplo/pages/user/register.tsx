import styles from '@/styles/register.module.css';
import Head from 'next/head'

export default function registerPage() {

    return (
        <main id={styles.main} className='flex min-h-screen flex-col'>
            <Head>
                <title> Cadastro</title>
            </Head>
            <form className={styles.container}>

                <div id={styles.infor}>Criar Conta</div>

                <div id={styles.input}>
               
                <input className={styles.placeholder} type="text" placeholder='Digite seu nome' />
                <br /><br />
               
                <input className={styles.placeholder}  type="Passaword" placeholder='Digite sua senha' />
                <br /><br />
               
                <input className={styles.placeholder}  type="Email" placeholder='Digite seu email' />
                <br /><br />
                <input id={styles.btn} type="submit" value="Enviar"/>
                </div>    
             

            </form>

        </main>
    )
}