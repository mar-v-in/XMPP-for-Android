.class Lorg/apache/harmony/security/x509/GeneralName$1;
.super Lorg/apache/harmony/security/asn1/ASN1Choice;
.source "GeneralName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/GeneralName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .parameter "$anonymous0"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    packed-switch v2, :pswitch_data_0

    .line 175
    new-instance v2, Ljava/io/IOException;

    .line 176
    const-string v3, "security.191"

    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    .line 175
    invoke-static {v3, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :pswitch_0
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/security/x509/OtherName;

    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x509/OtherName;)V

    .line 178
    .local v0, result:Lorg/apache/harmony/security/x509/GeneralName;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    #setter for: Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B
    invoke-static {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;->access$0(Lorg/apache/harmony/security/x509/GeneralName;[B)V

    .line 179
    return-object v0

    .line 148
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    :pswitch_1
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 149
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_0

    .line 151
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    :pswitch_2
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/security/x509/ORAddress;

    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x509/ORAddress;)V

    .line 152
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_0

    .line 154
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    :pswitch_3
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x501/Name;)V

    .line 155
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_0

    .line 157
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    :pswitch_4
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/security/x509/EDIPartyName;

    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x509/EDIPartyName;)V

    .line 158
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_0

    .line 160
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    :pswitch_5
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 161
    .local v1, uri:Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 162
    new-instance v2, Ljava/io/IOException;

    .line 163
    const-string v3, "security.190"

    .line 162
    invoke-static {v3, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_0
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 166
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_0

    .line 168
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    .end local v1           #uri:Ljava/lang/String;
    :pswitch_6
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, [B

    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>([B)V

    .line 169
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_0

    .line 171
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    :pswitch_7
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    .line 172
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, [I

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-direct {v0, v3, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 173
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getIndex(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 184
    check-cast p1, Lorg/apache/harmony/security/x509/GeneralName;

    .end local p1
    #getter for: Lorg/apache/harmony/security/x509/GeneralName;->tag:I
    invoke-static {p1}, Lorg/apache/harmony/security/x509/GeneralName;->access$1(Lorg/apache/harmony/security/x509/GeneralName;)I

    move-result v0

    return v0
.end method

.method public getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 189
    check-cast p1, Lorg/apache/harmony/security/x509/GeneralName;

    .end local p1
    #getter for: Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/harmony/security/x509/GeneralName;->access$2(Lorg/apache/harmony/security/x509/GeneralName;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
