.class public Lorg/apache/harmony/security/DefaultPolicyScanner;
.super Ljava/lang/Object;
.source "DefaultPolicyScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;,
        Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;,
        Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;,
        Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;,
        Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected composeStatus(Ljava/io/StreamTokenizer;)Ljava/lang/String;
    .locals 1
    .parameter "st"

    .prologue
    .line 219
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected configure(Ljava/io/StreamTokenizer;)Ljava/io/StreamTokenizer;
    .locals 3
    .parameter "st"

    .prologue
    const/16 v2, 0x5f

    const/16 v1, 0x24

    const/4 v0, 0x1

    .line 226
    invoke-virtual {p1, v0}, Ljava/io/StreamTokenizer;->slashSlashComments(Z)V

    .line 227
    invoke-virtual {p1, v0}, Ljava/io/StreamTokenizer;->slashStarComments(Z)V

    .line 228
    invoke-virtual {p1, v2, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 229
    invoke-virtual {p1, v1, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 230
    return-object p1
.end method

.method protected final handleUnexpectedToken(Ljava/io/StreamTokenizer;)V
    .locals 3
    .parameter "st"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;

    const-string v1, "security.90"

    .line 243
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->composeStatus(Ljava/io/StreamTokenizer;)Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V
    .locals 3
    .parameter "st"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 258
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;

    const-string v1, "security.8F"

    .line 259
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->composeStatus(Ljava/io/StreamTokenizer;)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {v1, v2, p2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readGrantEntry(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;
    .locals 4
    .parameter "st"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 286
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

    invoke-direct {v0}, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;-><init>()V

    .line 288
    .local v0, ge:Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;
    :goto_0
    :sswitch_0
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 320
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->pushBack()V

    .line 325
    :goto_1
    return-object v0

    .line 291
    :sswitch_1
    const-string v1, "signedby"

    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 293
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->signers:Ljava/lang/String;

    goto :goto_0

    .line 296
    :cond_0
    const-string v1, "security.8B"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {p0, p1, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_1
    const-string v1, "codebase"

    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 299
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 300
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->codebase:Ljava/lang/String;

    goto :goto_0

    .line 303
    :cond_2
    const-string v1, "security.8C"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {p0, p1, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_3
    const-string v1, "principal"

    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 306
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->readPrincipalEntry(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->addPrincipal(Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;)V

    goto :goto_0

    .line 308
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;)V

    goto :goto_0

    .line 316
    :sswitch_2
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->readPermissionEntries(Ljava/io/StreamTokenizer;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->permissions:Ljava/util/Collection;

    goto :goto_1

    .line 288
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_1
        0x2c -> :sswitch_0
        0x7b -> :sswitch_2
    .end sparse-switch
.end method

.method protected readKeystoreEntry(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;
    .locals 4
    .parameter "st"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 345
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;

    invoke-direct {v0}, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;-><init>()V

    .line 346
    .local v0, ke:Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 347
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->url:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 349
    iget v1, p1, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 350
    :cond_0
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    .line 357
    :goto_0
    return-object v0

    .line 352
    :cond_1
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->pushBack()V

    goto :goto_0

    .line 355
    :cond_2
    const-string v1, "security.8A"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected readPermissionEntries(Ljava/io/StreamTokenizer;)Ljava/util/Collection;
    .locals 8
    .parameter "st"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/StreamTokenizer;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2c

    const/4 v6, -0x3

    const/16 v5, 0x22

    .line 382
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 384
    .local v1, permissions:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;>;"
    :goto_0
    :sswitch_0
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 429
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;)V

    goto :goto_0

    .line 387
    :sswitch_1
    const-string v3, "permission"

    iget-object v4, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 388
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;

    invoke-direct {v0}, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;-><init>()V

    .line 389
    .local v0, pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    .line 390
    .local v2, tok:I
    if-eq v2, v6, :cond_0

    if-ne v2, v5, :cond_6

    .line 391
    :cond_0
    iget-object v3, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v3, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->klass:Ljava/lang/String;

    .line 392
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 393
    iget-object v3, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v3, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 396
    :cond_1
    iget v3, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v3, v7, :cond_2

    .line 397
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 399
    :cond_2
    iget v3, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v3, v5, :cond_3

    .line 400
    iget-object v3, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v3, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->actions:Ljava/lang/String;

    .line 401
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 402
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 405
    :cond_3
    iget v3, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v3, v6, :cond_5

    .line 406
    const-string v3, "signedby"

    iget-object v4, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 407
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 408
    iget-object v3, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v3, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->signers:Ljava/lang/String;

    .line 415
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 410
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;)V

    goto :goto_1

    .line 413
    :cond_5
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->pushBack()V

    goto :goto_1

    .line 419
    .end local v0           #pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;
    .end local v2           #tok:I
    :cond_6
    const-string v3, "security.8E"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :sswitch_2
    return-object v1

    .line 384
    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_1
        0x3b -> :sswitch_0
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method protected readPrincipalEntry(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    .locals 8
    .parameter "st"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2a

    .line 457
    new-instance v3, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;

    invoke-direct {v3}, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;-><init>()V

    .line 458
    .local v3, pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v5

    const/4 v6, -0x3

    if-ne v5, v6, :cond_2

    .line 459
    iget-object v5, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v5, v3, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->klass:Ljava/lang/String;

    .line 460
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 465
    :cond_0
    :goto_0
    iget v5, p1, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .local v4, sb:Ljava/lang/StringBuilder;
    iget-object v5, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    const-string v6, "[,]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, elements:[Ljava/lang/String;
    array-length v5, v0

    add-int/lit8 v1, v5, -0x1

    .line 469
    .local v1, endIndex:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    if-lt v2, v1, :cond_3

    .line 472
    const/4 v5, -0x1

    if-le v1, v5, :cond_1

    .line 473
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    .line 481
    .end local v0           #elements:[Ljava/lang/String;
    .end local v1           #endIndex:I
    .end local v2           #index:I
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :goto_2
    return-object v3

    .line 461
    :cond_2
    iget v5, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v5, v7, :cond_0

    .line 462
    const-string v5, "*"

    iput-object v5, v3, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->klass:Ljava/lang/String;

    .line 463
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    goto :goto_0

    .line 470
    .restart local v0       #elements:[Ljava/lang/String;
    .restart local v1       #endIndex:I
    .restart local v2       #index:I
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 476
    .end local v0           #elements:[Ljava/lang/String;
    .end local v1           #endIndex:I
    .end local v2           #index:I
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_4
    iget v5, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v5, v7, :cond_5

    .line 477
    const-string v5, "*"

    iput-object v5, v3, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    goto :goto_2

    .line 479
    :cond_5
    const-string v5, "security.8D"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public scanStream(Ljava/io/Reader;Ljava/util/Collection;Ljava/util/List;)V
    .locals 3
    .parameter "r"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 504
    .local p2, grantEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;>;"
    .local p3, keystoreEntries:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;>;"
    new-instance v1, Ljava/io/StreamTokenizer;

    invoke-direct {v1, p1}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->configure(Ljava/io/StreamTokenizer;)Ljava/io/StreamTokenizer;

    move-result-object v0

    .line 507
    .local v0, st:Ljava/io/StreamTokenizer;
    :goto_0
    :sswitch_0
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 525
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;)V

    goto :goto_0

    .line 512
    :sswitch_1
    const-string v1, "keystore"

    iget-object v2, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/DefaultPolicyScanner;->readKeystoreEntry(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 514
    :cond_0
    const-string v1, "grant"

    iget-object v2, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/DefaultPolicyScanner;->readGrantEntry(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 517
    :cond_1
    const-string v1, "security.89"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    goto :goto_0

    .line 529
    :sswitch_2
    return-void

    .line 507
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_1
        -0x1 -> :sswitch_2
        0x3b -> :sswitch_0
    .end sparse-switch
.end method
