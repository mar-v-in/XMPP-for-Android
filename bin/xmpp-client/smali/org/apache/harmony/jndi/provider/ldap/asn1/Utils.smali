.class public Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final CODING_CHARSET:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static conjoinSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;Lorg/apache/harmony/security/asn1/ASN1Sequence;)Lorg/apache/harmony/security/asn1/ASN1Sequence;
    .locals 7
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v6, 0x0

    .line 40
    if-nez p0, :cond_0

    .line 65
    .end local p1
    :goto_0
    return-object p1

    .line 44
    .restart local p1
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    array-length v2, v2

    .line 49
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    array-length v3, v3

    .line 48
    add-int/2addr v2, v3

    new-array v0, v2, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 50
    .local v0, result:[Lorg/apache/harmony/security/asn1/ASN1Type;
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    array-length v3, v3

    invoke-static {v2, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    array-length v3, v3

    .line 52
    iget-object v4, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    array-length v4, v4

    .line 51
    invoke-static {v2, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;

    invoke-direct {v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 56
    .local v1, sequence:Lorg/apache/harmony/security/asn1/ASN1Sequence;
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    iget-object v3, v1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    .line 57
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    array-length v4, v4

    .line 56
    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    iget-object v3, v1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    .line 59
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    array-length v4, v4

    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    array-length v5, v5

    .line 58
    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    iget-object v3, v1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    .line 62
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    array-length v4, v4

    .line 61
    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    iget-object v3, v1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    .line 64
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    array-length v4, v4

    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    array-length v5, v5

    .line 63
    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    .line 65
    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/Object;)[B
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 76
    if-nez p0, :cond_0

    .line 77
    new-array p0, v3, [B

    .line 98
    .end local p0
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object p0

    .line 80
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local p0
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 82
    :try_start_0
    check-cast p0, Ljava/lang/String;

    .end local p0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 86
    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    new-array p0, v3, [B

    goto :goto_0

    .line 88
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local p0
    :cond_1
    instance-of v1, p0, [C

    if-eqz v1, :cond_2

    .line 90
    :try_start_1
    new-instance v1, Ljava/lang/String;

    check-cast p0, [C

    .end local p0
    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([C)V

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p0

    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    .line 94
    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    new-array p0, v3, [B

    goto :goto_0

    .line 98
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local p0
    :cond_2
    check-cast p0, [B

    goto :goto_0
.end method

.method public static getCharArray(Ljava/lang/Object;)[C
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 112
    if-nez p0, :cond_0

    .line 113
    new-array p0, v3, [C

    .line 128
    .end local p0
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object p0

    .line 116
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local p0
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 117
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    goto :goto_0

    .line 118
    .restart local p0
    :cond_1
    instance-of v1, p0, [B

    if-eqz v1, :cond_2

    .line 120
    :try_start_0
    new-instance v1, Ljava/lang/String;

    check-cast p0, [B

    .end local p0
    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 124
    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    new-array p0, v3, [C

    goto :goto_0

    .line 128
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local p0
    :cond_2
    check-cast p0, [C

    goto :goto_0
.end method

.method public static getString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "obj"

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 143
    const-string p0, ""

    .line 157
    .end local p0
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object p0

    .line 146
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local p0
    :cond_0
    instance-of v1, p0, [B

    if-eqz v1, :cond_1

    .line 148
    :try_start_0
    new-instance v1, Ljava/lang/String;

    check-cast p0, [B

    .end local p0
    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 152
    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    const-string p0, ""

    goto :goto_0

    .line 154
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local p0
    :cond_1
    instance-of v1, p0, [C

    if-eqz v1, :cond_2

    .line 155
    new-instance v1, Ljava/lang/String;

    check-cast p0, [C

    .end local p0
    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([C)V

    move-object p0, v1

    goto :goto_0

    .line 157
    .restart local p0
    :cond_2
    check-cast p0, Ljava/lang/String;

    goto :goto_0
.end method
