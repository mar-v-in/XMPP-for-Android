.class Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;
.super Ljava/lang/Thread;
.source "LdapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/jndi/provider/ldap/LdapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Dispatcher"
.end annotation


# instance fields
.field private isStopped:Z

.field final synthetic this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->isStopped:Z

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->setDaemon(Z)V

    .line 63
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;)Lorg/apache/harmony/jndi/provider/ldap/LdapClient;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    return-object v0
.end method

.method private processResponse(Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;Ljava/lang/Exception;)V
    .locals 4
    .parameter "response"
    .parameter "ex"

    .prologue
    .line 71
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getMessageId()I

    move-result v1

    if-nez v1, :cond_1

    .line 72
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    #calls: Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->notifyUnls(Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;)V
    invoke-static {v1, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->access$0(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    #getter for: Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;
    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->access$1(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;)Ljava/util/Hashtable;

    move-result-object v1

    .line 77
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getMessageId()I

    move-result v2

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;

    .line 78
    .local v0, element:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;
    if-nez v0, :cond_3

    .line 79
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    #getter for: Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->batchedSearchRequests:Ljava/util/Hashtable;
    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->access$2(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;)Ljava/util/Hashtable;

    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getMessageId()I

    move-result v2

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    #getter for: Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->batchedSearchRequests:Ljava/util/Hashtable;
    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->access$2(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;)Ljava/util/Hashtable;

    move-result-object v1

    .line 82
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getMessageId()I

    move-result v2

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #element:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;
    check-cast v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;

    .line 84
    .restart local v0       #element:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;
    if-eqz p2, :cond_2

    .line 85
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getResponseOp()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v1

    .line 86
    invoke-virtual {v1, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->setException(Ljava/lang/Exception;)V

    .line 87
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    #getter for: Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->batchedSearchRequests:Ljava/util/Hashtable;
    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->access$2(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;)Ljava/util/Hashtable;

    move-result-object v1

    .line 88
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getMessageId()I

    move-result v2

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    :cond_2
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->response:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getMessageId()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getMessageId()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 95
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getResponseOp()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v1

    .line 97
    new-instance v2, Ljava/io/IOException;

    .line 98
    const-string v3, "ldap.31"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->setException(Ljava/lang/Exception;)V

    .line 99
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    #getter for: Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->batchedSearchRequests:Ljava/util/Hashtable;
    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->access$2(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;)Ljava/util/Hashtable;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getMessageId()I

    move-result v2

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 105
    :cond_3
    if-eqz v0, :cond_6

    .line 106
    iput-object p1, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->response:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    .line 107
    iput-object p2, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->ex:Ljava/lang/Exception;

    .line 109
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->lock:Ljava/lang/Object;

    if-nez v1, :cond_4

    .line 110
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    #calls: Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->notifyPersistenSearchListener(Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;)V
    invoke-static {v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->access$3(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;)V

    goto/16 :goto_0

    .line 113
    :cond_4
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->response:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getOperationIndex()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_5

    .line 114
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->response:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getResponseOp()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;

    .line 115
    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->getExtendedRequest()Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;->getID()Ljava/lang/String;

    move-result-object v1

    .line 116
    const-string v2, "1.3.6.1.4.1.1466.20037"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->isStopped:Z

    .line 128
    :cond_5
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 129
    :try_start_0
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 128
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 134
    :cond_6
    if-eqz p2, :cond_0

    .line 140
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->close()V

    goto/16 :goto_0
.end method


# virtual methods
.method public isStopped()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->isStopped:Z

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 148
    :goto_0
    iget-boolean v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->isStopped:Z

    if-eqz v3, :cond_0

    .line 217
    return-void

    .line 151
    :cond_0
    :try_start_0
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher$1;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .local v2, response:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    const/4 v1, 0x0

    .line 200
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    #getter for: Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->in:Ljava/io/InputStream;
    invoke-static {v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->access$4(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->decode(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    :goto_1
    :try_start_2
    invoke-direct {p0, v2, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->processResponse(Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 211
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #response:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 201
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #ex:Ljava/lang/Exception;
    .restart local v2       #response:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    :catch_1
    move-exception v0

    .line 203
    .local v0, e:Ljava/io/IOException;
    move-object v1, v0

    goto :goto_1

    .line 204
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/RuntimeException;
    move-object v1, v0

    goto :goto_1
.end method

.method public setStopped(Z)V
    .locals 0
    .parameter "isStopped"

    .prologue
    .line 220
    iput-boolean p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->isStopped:Z

    .line 221
    return-void
.end method
