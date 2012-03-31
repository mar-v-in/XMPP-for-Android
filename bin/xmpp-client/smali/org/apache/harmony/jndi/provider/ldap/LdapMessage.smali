.class public Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
.super Ljava/lang/Object;
.source "LdapMessage.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;


# static fields
.field private static nextMessageId:I


# instance fields
.field private controls:[Lorg/apache/harmony/javax/naming/ldap/Control;

.field private messageId:I

.field private opIndex:I

.field private requestOp:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;

.field private responseOp:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    sput v0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->nextMessageId:I

    .line 38
    return-void
.end method

.method public constructor <init>(ILorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;[Lorg/apache/harmony/javax/naming/ldap/Control;)V
    .locals 1
    .parameter "opIndex"
    .parameter "op"
    .parameter "controls"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->opIndex:I

    .line 105
    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->requestOp:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;

    .line 106
    iput-object p3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->controls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 107
    invoke-static {}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getNextMessageId()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->messageId:I

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;)V
    .locals 1
    .parameter "op"

    .prologue
    const/4 v0, -0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->responseOp:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;

    .line 87
    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->opIndex:I

    .line 88
    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->messageId:I

    .line 89
    return-void
.end method

.method public static declared-synchronized getNextMessageId()I
    .locals 3

    .prologue
    .line 74
    const-class v1, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    monitor-enter v1

    :try_start_0
    sget v0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->nextMessageId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->nextMessageId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    sget-object v1, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->LDAPMessage:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 121
    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    check-cast v0, [Ljava/lang/Object;

    .line 122
    .local v0, values:[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->decodeValues([Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public decodeValues([Ljava/lang/Object;)V
    .locals 11
    .parameter "values"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 128
    aget-object v6, p1, v9

    invoke-static {v6}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->messageId:I

    .line 129
    aget-object v6, p1, v8

    if-nez v6, :cond_1

    .line 163
    :cond_0
    return-void

    .line 133
    :cond_1
    aget-object v0, p1, v8

    check-cast v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    .line 134
    .local v0, chosen:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->getIndex()I

    move-result v6

    iput v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->opIndex:I

    .line 136
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getResponseOp()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->responseOp:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;

    .line 137
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->responseOp:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;

    if-eqz v6, :cond_0

    .line 141
    iget v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->opIndex:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    .line 142
    iget v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->opIndex:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    .line 143
    iget v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->opIndex:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_3

    .line 148
    :cond_2
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->responseOp:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v0, v7, v9

    invoke-interface {v6, v7}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;->decodeValues([Ljava/lang/Object;)V

    .line 153
    :goto_0
    aget-object v6, p1, v10

    if-eqz v6, :cond_0

    .line 154
    aget-object v4, p1, v10

    check-cast v4, Ljava/util/Collection;

    .line 155
    .local v4, list:Ljava/util/Collection;,"Ljava/util/Collection<[Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v6, v6, [Lorg/apache/harmony/javax/naming/ldap/Control;

    iput-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->controls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 156
    const/4 v1, 0x0

    .line 157
    .local v1, index:I
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 158
    .local v5, objects:[Ljava/lang/Object;
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/LdapControl;

    invoke-direct {v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapControl;-><init>()V

    .line 159
    .local v3, lcontrol:Lorg/apache/harmony/jndi/provider/ldap/LdapControl;
    invoke-virtual {v3, v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapControl;->decodeValues([Ljava/lang/Object;)V

    .line 160
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->controls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapControl;->getControl()Lorg/apache/harmony/javax/naming/ldap/Control;

    move-result-object v8

    aput-object v8, v7, v1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_1

    .line 150
    .end local v1           #index:I
    .end local v3           #lcontrol:Lorg/apache/harmony/jndi/provider/ldap/LdapControl;
    .end local v4           #list:Ljava/util/Collection;,"Ljava/util/Collection<[Ljava/lang/Object;>;"
    .end local v5           #objects:[Ljava/lang/Object;
    :cond_3
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->responseOp:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    invoke-interface {v7, v6}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;->decodeValues([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public encode()[B
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->LDAPMessage:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public encodeValues([Ljava/lang/Object;)V
    .locals 8
    .parameter "values"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 176
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->messageId:I

    invoke-static {v3}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v5

    .line 178
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->opIndex:I

    const/16 v4, 0x11

    if-eq v3, v4, :cond_0

    .line 179
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->opIndex:I

    const/16 v4, 0xb

    if-eq v3, v4, :cond_0

    .line 180
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->opIndex:I

    if-eq v3, v7, :cond_0

    .line 181
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->opIndex:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 182
    :cond_0
    new-array v2, v6, [Ljava/lang/Object;

    .line 183
    .local v2, objs:[Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->requestOp:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;

    invoke-interface {v3, v2}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;->encodeValues([Ljava/lang/Object;)V

    .line 184
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->opIndex:I

    aget-object v5, v2, v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;-><init>(ILjava/lang/Object;)V

    aput-object v3, p1, v6

    .line 190
    .end local v2           #objs:[Ljava/lang/Object;
    :goto_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->controls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    if-eqz v3, :cond_1

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    .line 192
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->controls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    array-length v3, v3

    .line 191
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/jndi/provider/ldap/LdapControl;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->controls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    array-length v3, v3

    if-lt v0, v3, :cond_3

    .line 196
    aput-object v1, p1, v7

    .line 198
    .end local v0           #i:I
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/jndi/provider/ldap/LdapControl;>;"
    :cond_1
    return-void

    .line 186
    :cond_2
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->opIndex:I

    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->requestOp:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;-><init>(ILjava/lang/Object;)V

    aput-object v3, p1, v6

    goto :goto_0

    .line 194
    .restart local v0       #i:I
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/jndi/provider/ldap/LdapControl;>;"
    :cond_3
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/LdapControl;

    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->controls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Lorg/apache/harmony/jndi/provider/ldap/LdapControl;-><init>(Lorg/apache/harmony/javax/naming/ldap/Control;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getControls()[Lorg/apache/harmony/javax/naming/ldap/Control;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->controls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->messageId:I

    return v0
.end method

.method public getOperationIndex()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->opIndex:I

    return v0
.end method

.method public getRequestOp()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->requestOp:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getResponseOp()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->responseOp:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;

    return-object v0
.end method
