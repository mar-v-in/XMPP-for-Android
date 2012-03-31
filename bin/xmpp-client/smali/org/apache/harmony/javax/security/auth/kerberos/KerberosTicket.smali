.class public Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
.super Ljava/lang/Object;
.source "KerberosTicket.java"

# interfaces
.implements Ljavax/security/auth/Destroyable;
.implements Lorg/apache/harmony/javax/security/auth/Refreshable;
.implements Ljava/io/Serializable;


# static fields
.field private static final FLAGS_NUM:I = 0x20

.field private static final FORWARDABLE:I = 0x1

.field private static final FORWARDED:I = 0x2

.field private static final INITIAL:I = 0x9

.field private static final LF:Ljava/lang/String; = "\n"

.field private static final POSTDATED:I = 0x6

.field private static final PROXIABLE:I = 0x3

.field private static final PROXY:I = 0x4

.field private static final RENEWABLE:I = 0x8

.field private static final serialVersionUID:J = 0x66a1816d7077c3bbL


# instance fields
.field private final asn1Encoding:[B

.field private authTime:Ljava/util/Date;

.field private client:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

.field private clientAddresses:[Ljava/net/InetAddress;

.field private transient destroyed:Z

.field private endTime:Ljava/util/Date;

.field private flags:[Z

.field private renewTill:Ljava/util/Date;

.field private server:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

.field private final sessionKey:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

.field private startTime:Ljava/util/Date;


# direct methods
.method public constructor <init>([BLorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;[BI[ZLjava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;[Ljava/net/InetAddress;)V
    .locals 4
    .parameter "asn1Encoding"
    .parameter "client"
    .parameter "server"
    .parameter "keyBytes"
    .parameter "keyType"
    .parameter "flags"
    .parameter "authTime"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "renewTill"
    .parameter "clientAddresses"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.3B"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    if-nez p2, :cond_1

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.3C"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    if-nez p3, :cond_2

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.3D"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    if-nez p4, :cond_3

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.3E"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_3
    if-nez p7, :cond_4

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.3F"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_4
    if-nez p9, :cond_5

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.40"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_5
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->asn1Encoding:[B

    .line 132
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->asn1Encoding:[B

    const/4 v2, 0x0

    .line 133
    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->asn1Encoding:[B

    array-length v3, v3

    .line 132
    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->client:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    .line 136
    iput-object p3, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->server:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    .line 137
    new-instance v0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    invoke-direct {v0, p4, p5}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->sessionKey:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    .line 139
    if-nez p6, :cond_6

    .line 140
    const/16 v0, 0x20

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    .line 149
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_8

    if-nez p10, :cond_8

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.41"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_6
    array-length v0, p6

    const/16 v1, 0x20

    if-le v0, v1, :cond_7

    .line 142
    array-length v0, p6

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    .line 143
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    array-length v3, v3

    invoke-static {p6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 145
    :cond_7
    const/16 v0, 0x20

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    .line 146
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    const/4 v2, 0x0

    array-length v3, p6

    invoke-static {p6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 153
    :cond_8
    iput-object p10, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->renewTill:Ljava/util/Date;

    .line 155
    if-eqz p8, :cond_9

    .line 156
    iput-object p8, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->startTime:Ljava/util/Date;

    .line 161
    :goto_1
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->startTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p9}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.42"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_9
    iput-object p7, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->startTime:Ljava/util/Date;

    goto :goto_1

    .line 166
    :cond_a
    iput-object p7, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->authTime:Ljava/util/Date;

    .line 167
    iput-object p9, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->endTime:Ljava/util/Date;

    .line 169
    if-eqz p11, :cond_b

    .line 170
    array-length v0, p11

    new-array v0, v0, [Ljava/net/InetAddress;

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    .line 171
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    const/4 v2, 0x0

    .line 172
    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    array-length v3, v3

    .line 171
    invoke-static {p11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    :cond_b
    return-void
.end method

.method private checkState()V
    .locals 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->destroyed:Z

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "auth.43"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 188
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->destroyed:Z

    if-eqz v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->asn1Encoding:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 192
    iput-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->client:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    .line 193
    iput-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->server:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    .line 194
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->sessionKey:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->destroy()V

    .line 195
    iput-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    .line 196
    iput-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->authTime:Ljava/util/Date;

    .line 197
    iput-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->startTime:Ljava/util/Date;

    .line 198
    iput-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->endTime:Ljava/util/Date;

    .line 199
    iput-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->renewTill:Ljava/util/Date;

    .line 200
    iput-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->destroyed:Z

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "other"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 206
    if-ne p0, p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v2

    .line 210
    :cond_1
    instance-of v4, p1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_c

    move-object v1, p1

    .line 211
    check-cast v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;

    .line 212
    .local v1, that:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->sessionKey:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    iget-object v5, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->sessionKey:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    invoke-virtual {v4, v5}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 213
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->authTime:Ljava/util/Date;

    iget-object v5, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->authTime:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 214
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->endTime:Ljava/util/Date;

    iget-object v5, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->endTime:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 215
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->startTime:Ljava/util/Date;

    iget-object v5, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->startTime:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 216
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->client:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    iget-object v5, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->client:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    invoke-virtual {v4, v5}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 217
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->server:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    iget-object v5, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->server:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    invoke-virtual {v4, v5}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 218
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->asn1Encoding:[B

    array-length v4, v4

    iget-object v5, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->asn1Encoding:[B

    array-length v5, v5

    if-ne v4, v5, :cond_c

    .line 219
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    array-length v4, v4

    iget-object v5, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    array-length v5, v5

    if-ne v4, v5, :cond_c

    .line 220
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->asn1Encoding:[B

    array-length v4, v4

    if-lt v0, v4, :cond_6

    .line 225
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    array-length v4, v4

    if-lt v0, v4, :cond_8

    .line 230
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->renewTill:Ljava/util/Date;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->renewTill:Ljava/util/Date;

    iget-object v5, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->renewTill:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 231
    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->renewTill:Ljava/util/Date;

    if-nez v4, :cond_c

    iget-object v4, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->renewTill:Ljava/util/Date;

    if-nez v4, :cond_c

    .line 232
    :cond_3
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    if-eqz v4, :cond_b

    .line 233
    iget-object v4, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    if-eqz v4, :cond_b

    .line 234
    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 235
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    aget-object v4, v4, v0

    if-nez v4, :cond_4

    iget-object v4, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    aget-object v4, v4, v0

    if-nez v4, :cond_5

    .line 236
    :cond_4
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    aget-object v4, v4, v0

    if-eqz v4, :cond_a

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    aget-object v4, v4, v0

    .line 237
    iget-object v5, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_5
    move v2, v3

    .line 238
    goto/16 :goto_0

    .line 221
    :cond_6
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->asn1Encoding:[B

    aget-byte v4, v4, v0

    iget-object v5, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->asn1Encoding:[B

    aget-byte v5, v5, v0

    if-eq v4, v5, :cond_7

    move v2, v3

    .line 222
    goto/16 :goto_0

    .line 220
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    :cond_8
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    aget-boolean v4, v4, v0

    iget-object v5, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    aget-boolean v5, v5, v0

    if-eq v4, v5, :cond_9

    move v2, v3

    .line 227
    goto/16 :goto_0

    .line 225
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 234
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 242
    :cond_b
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    if-nez v4, :cond_c

    .line 243
    iget-object v4, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    if-eqz v4, :cond_0

    .end local v0           #i:I
    .end local v1           #that:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    :cond_c
    move v2, v3

    .line 249
    goto/16 :goto_0
.end method

.method public final getAuthTime()Ljava/util/Date;
    .locals 3

    .prologue
    .line 253
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->destroyed:Z

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    .line 256
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->authTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public final getClient()Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->client:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    return-object v0
.end method

.method public final getClientAddresses()[Ljava/net/InetAddress;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 264
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    array-length v1, v1

    new-array v0, v1, [Ljava/net/InetAddress;

    .line 266
    .local v0, tmp:[Ljava/net/InetAddress;
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    .end local v0           #tmp:[Ljava/net/InetAddress;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getEncoded()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 273
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->checkState()V

    .line 274
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->asn1Encoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 275
    .local v0, tmp:[B
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->asn1Encoding:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    return-object v0
.end method

.method public final getEndTime()Ljava/util/Date;
    .locals 3

    .prologue
    .line 280
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->destroyed:Z

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 283
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->endTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public final getFlags()[Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 287
    iget-boolean v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->destroyed:Z

    if-eqz v1, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 292
    :goto_0
    return-object v0

    .line 290
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    array-length v1, v1

    new-array v0, v1, [Z

    .line 291
    .local v0, tmp:[Z
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final getRenewTill()Ljava/util/Date;
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->destroyed:Z

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->renewTill:Ljava/util/Date;

    goto :goto_0
.end method

.method public final getServer()Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->server:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    return-object v0
.end method

.method public final getSessionKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->checkState()V

    .line 309
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->sessionKey:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    return-object v0
.end method

.method public final getSessionKeyType()I
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->checkState()V

    .line 314
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->sessionKey:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->getKeyType()I

    move-result v0

    return v0
.end method

.method public final getStartTime()Ljava/util/Date;
    .locals 3

    .prologue
    .line 318
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->checkState()V

    .line 319
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->startTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 324
    const/4 v3, 0x0

    .line 325
    .local v3, hashcode:I
    iget-object v6, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->asn1Encoding:[B

    array-length v7, v6

    move v4, v5

    :goto_0
    if-lt v4, v7, :cond_1

    .line 328
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->sessionKey:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    .line 329
    iget-object v7, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    array-length v8, v7

    move v6, v5

    :goto_1
    if-lt v6, v8, :cond_2

    .line 332
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->authTime:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    .line 333
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->startTime:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    .line 334
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->endTime:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    .line 335
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->renewTill:Ljava/util/Date;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->renewTill:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v3, v4

    .line 336
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->client:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    invoke-virtual {v4}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    .line 337
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->server:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    invoke-virtual {v4}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    .line 338
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    if-eqz v4, :cond_0

    .line 339
    iget-object v7, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    array-length v8, v7

    move v6, v5

    :goto_3
    if-lt v6, v8, :cond_5

    .line 344
    :cond_0
    return v3

    .line 325
    :cond_1
    aget-byte v1, v6, v4

    .line 326
    .local v1, element:B
    add-int/2addr v3, v1

    .line 325
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 329
    .end local v1           #element:B
    :cond_2
    aget-boolean v2, v7, v6

    .line 330
    .local v2, flag:Z
    if-eqz v2, :cond_3

    const/4 v4, 0x1

    :goto_4
    add-int/2addr v3, v4

    .line 329
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    :cond_3
    move v4, v5

    .line 330
    goto :goto_4

    .end local v2           #flag:Z
    :cond_4
    move v4, v5

    .line 335
    goto :goto_2

    .line 339
    :cond_5
    aget-object v0, v7, v6

    .line 340
    .local v0, clientAddresse:Ljava/net/InetAddress;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v4

    .line 341
    :goto_5
    add-int/2addr v3, v4

    .line 339
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_3

    :cond_6
    move v4, v5

    .line 341
    goto :goto_5
.end method

.method public isCurrent()Z
    .locals 4

    .prologue
    .line 349
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->checkState()V

    .line 350
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->getStartTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->getEndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 352
    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->destroyed:Z

    return v0
.end method

.method public final isForwardable()Z
    .locals 2

    .prologue
    .line 363
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->checkState()V

    .line 364
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public final isForwarded()Z
    .locals 2

    .prologue
    .line 368
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->checkState()V

    .line 370
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public final isInitial()Z
    .locals 2

    .prologue
    .line 374
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->checkState()V

    .line 375
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    const/16 v1, 0x9

    aget-boolean v0, v0, v1

    return v0
.end method

.method public final isPostdated()Z
    .locals 2

    .prologue
    .line 379
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->checkState()V

    .line 380
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    return v0
.end method

.method public final isProxiable()Z
    .locals 2

    .prologue
    .line 384
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->checkState()V

    .line 385
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public final isProxy()Z
    .locals 2

    .prologue
    .line 389
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->checkState()V

    .line 390
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public final isRenewable()Z
    .locals 2

    .prologue
    .line 394
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->checkState()V

    .line 395
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    return v0
.end method

.method public refresh()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/RefreshFailedException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->checkState()V

    .line 403
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    const/16 v2, 0x8

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    .line 404
    new-instance v1, Lorg/apache/harmony/javax/security/auth/RefreshFailedException;

    const-string v2, "auth.44"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/security/auth/RefreshFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->renewTill:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 408
    new-instance v1, Lorg/apache/harmony/javax/security/auth/RefreshFailedException;

    const-string v2, "auth.45"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/security/auth/RefreshFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_1
    :try_start_0
    invoke-static {}, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->doTGS()Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;
    :try_end_0
    .catch Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, e:Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;
    new-instance v1, Lorg/apache/harmony/javax/security/auth/RefreshFailedException;

    invoke-virtual {v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/security/auth/RefreshFailedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 420
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->checkState()V

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "Ticket = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->asn1Encoding:[B

    const-string v5, "(hex) "

    invoke-static {v4, v5}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string v2, "Client Principal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->client:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    invoke-virtual {v4}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const-string v2, "Server Principal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->server:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    invoke-virtual {v4}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string v2, "Session Key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->sessionKey:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    const-string v2, "Forwardable Ticket = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string v2, "Forwarded Ticket = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    const/4 v5, 0x2

    aget-boolean v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const-string v2, "Proxiable Ticket = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    const/4 v5, 0x3

    aget-boolean v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string v2, "Proxy Ticket = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    const/4 v5, 0x4

    aget-boolean v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string v2, "Postdated Ticket = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    const/4 v5, 0x6

    aget-boolean v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string v2, "Renewable Ticket = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    const/16 v5, 0x8

    aget-boolean v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string v2, "Initial Ticket = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->flags:[Z

    const/16 v5, 0x9

    aget-boolean v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v2, "Auth Time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->authTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v2, "Start Time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->startTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string v2, "End Time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->endTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v2, "Renew Till = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->renewTill:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v2, "Client Addresses "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    if-eqz v2, :cond_2

    .line 440
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 451
    .end local v0           #i:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 441
    .restart local v0       #i:I
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 442
    new-instance v2, Ljava/lang/NullPointerException;

    .line 443
    const-string v3, "auth.46"

    invoke-static {v3}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 445
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clientAddresses["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->clientAddresses:[Ljava/net/InetAddress;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    .end local v0           #i:I
    :cond_2
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
