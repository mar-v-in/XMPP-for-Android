.class Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;
.super Ljava/lang/Object;
.source "DefaultPolicyParser.java"

# interfaces
.implements Lorg/apache/harmony/security/fortress/PolicyUtils$GeneralExpansionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/fortress/DefaultPolicyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermissionExpander"
.end annotation


# instance fields
.field private ge:Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

.field private ks:Ljava/security/KeyStore;

.field final synthetic this$0:Lorg/apache/harmony/security/fortress/DefaultPolicyParser;


# direct methods
.method constructor <init>(Lorg/apache/harmony/security/fortress/DefaultPolicyParser;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->this$0:Lorg/apache/harmony/security/fortress/DefaultPolicyParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private pc2str(Ljava/security/Principal;)Ljava/lang/String;
    .locals 5
    .parameter "pc"

    .prologue
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, klass:Ljava/lang/String;
    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, name:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x5

    .line 101
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 103
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    return-object v3
.end method


# virtual methods
.method public configure(Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;Ljava/security/KeyStore;)Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;
    .locals 0
    .parameter "ge"
    .parameter "ks"

    .prologue
    .line 92
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->ge:Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

    .line 93
    iput-object p2, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->ks:Ljava/security/KeyStore;

    .line 94
    return-object p0
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "protocol"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;
        }
    .end annotation

    .prologue
    .line 132
    const-string v3, "self"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    iget-object v3, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->ge:Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

    iget-object v3, v3, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->principals:Ljava/util/Collection;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->ge:Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

    iget-object v3, v3, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->principals:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->ge:Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

    iget-object v3, v3, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->principals:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :goto_1
    return-object v3

    .line 136
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;

    .line 137
    .local v1, pr:Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    iget-object v4, v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->klass:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 140
    :try_start_0
    iget-object v4, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->this$0:Lorg/apache/harmony/security/fortress/DefaultPolicyParser;

    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->ks:Ljava/security/KeyStore;

    .line 141
    iget-object v6, v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    .line 140
    invoke-virtual {v4, v5, v6}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->getPrincipalByAlias(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/Principal;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->pc2str(Ljava/security/Principal;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;

    .line 145
    const-string v4, "security.143"

    iget-object v5, v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    .line 144
    invoke-static {v4, v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-direct {v3, v4, v0}, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 148
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v4, v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->klass:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 149
    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 154
    .end local v1           #pr:Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_2
    new-instance v3, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;

    .line 155
    const-string v4, "security.144"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-direct {v3, v4}, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_3
    const-string v3, "alias"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 160
    :try_start_1
    iget-object v3, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->this$0:Lorg/apache/harmony/security/fortress/DefaultPolicyParser;

    iget-object v4, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->ks:Ljava/security/KeyStore;

    invoke-virtual {v3, v4, p2}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->getPrincipalByAlias(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/Principal;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->pc2str(Ljava/security/Principal;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_1

    .line 161
    :catch_1
    move-exception v0

    .line 162
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v3, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;

    .line 163
    const-string v4, "security.143"

    invoke-static {v4, p2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-direct {v3, v4, v0}, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 166
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    new-instance v3, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;

    .line 167
    const-string v4, "security.145"

    .line 166
    invoke-static {v4, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
