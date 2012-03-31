.class Lorg/apache/harmony/security/x509/Extension$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 2
    .parameter "$anonymous0"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 117
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/Extension$2;->setDefault(Ljava/lang/Object;I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 10
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    iget-object v9, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    .line 124
    .local v9, values:[Ljava/lang/Object;
    aget-object v8, v9, v1

    check-cast v8, [I

    .line 125
    .local v8, oid:[I
    aget-object v0, v9, v5

    check-cast v0, [Ljava/lang/Object;

    aget-object v3, v0, v1

    check-cast v3, [B

    .line 126
    .local v3, extnValue:[B
    aget-object v0, v9, v5

    check-cast v0, [Ljava/lang/Object;

    aget-object v4, v0, v2

    check-cast v4, [B

    .line 128
    .local v4, rawExtnValue:[B
    const/4 v6, 0x0

    .line 130
    .local v6, decodedExtValue:Lorg/apache/harmony/security/x509/ExtensionValue;
    sget-object v0, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    #calls: Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z
    invoke-static {v8, v0}, Lorg/apache/harmony/security/x509/Extension;->access$0([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    new-instance v6, Lorg/apache/harmony/security/x509/KeyUsage;

    .end local v6           #decodedExtValue:Lorg/apache/harmony/security/x509/ExtensionValue;
    invoke-direct {v6, v3}, Lorg/apache/harmony/security/x509/KeyUsage;-><init>([B)V

    .line 136
    .restart local v6       #decodedExtValue:Lorg/apache/harmony/security/x509/ExtensionValue;
    :cond_0
    :goto_0
    new-instance v0, Lorg/apache/harmony/security/x509/Extension;

    aget-object v1, v9, v1

    check-cast v1, [I

    .line 137
    aget-object v2, v9, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 138
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v5

    .line 136
    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;Lorg/apache/harmony/security/x509/Extension;)V

    return-object v0

    .line 132
    :cond_1
    sget-object v0, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    #calls: Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z
    invoke-static {v8, v0}, Lorg/apache/harmony/security/x509/Extension;->access$0([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v6, Lorg/apache/harmony/security/x509/BasicConstraints;

    .end local v6           #decodedExtValue:Lorg/apache/harmony/security/x509/ExtensionValue;
    invoke-direct {v6, v3}, Lorg/apache/harmony/security/x509/BasicConstraints;-><init>([B)V

    .restart local v6       #decodedExtValue:Lorg/apache/harmony/security/x509/ExtensionValue;
    goto :goto_0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter "object"
    .parameter "values"

    .prologue
    .line 144
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    .line 146
    .local v0, ext:Lorg/apache/harmony/security/x509/Extension;
    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x509/Extension;->extnID:[I
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extension;->access$2(Lorg/apache/harmony/security/x509/Extension;)[I

    move-result-object v2

    aput-object v2, p2, v1

    .line 147
    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/x509/Extension;->critical:Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extension;->access$3(Lorg/apache/harmony/security/x509/Extension;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    aput-object v1, p2, v2

    .line 148
    const/4 v1, 0x2

    #getter for: Lorg/apache/harmony/security/x509/Extension;->extnValue:[B
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extension;->access$4(Lorg/apache/harmony/security/x509/Extension;)[B

    move-result-object v2

    aput-object v2, p2, v1

    .line 149
    return-void

    .line 147
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
