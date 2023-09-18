Aprendendo sobre formulários, navegação e troca de mensagens entre widgets.

Em formulários, é bom lembrar de alguns aspectos fundamentais:




Sobre TROCA DE MENSAGENS:
A troca de informações entre widgets no flutter é gerenciada por uma classe que herda de InheritedWidget.

Essa classe trabalha tendo 2 grandes funções principais: 
armazenar dados que são recebidos de outras classes (define metodos) e 
disparar a reconstrução das classes dependentes que implementam seu metodo "of". (ex: children: DadosDoBanco().of.minhaLista)

Quando o estado dessa classe mudar, o metodo updateShouldNotify será executado e notificará toda sua descendência caso retorne true. 
O retorno de true ou false pode ser definido sob alguma condição. 
Ver o detalhamento dessa implementação em: data/form_data.dart