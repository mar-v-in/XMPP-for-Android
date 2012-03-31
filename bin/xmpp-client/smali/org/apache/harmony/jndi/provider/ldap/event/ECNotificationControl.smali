.class public Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;
.super Lorg/apache/harmony/javax/naming/ldap/BasicControl;
.source "ECNotificationControl.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;


# static fields
.field public static final ADD:I = 0x1

.field public static final DELETE:I = 0x2

.field public static final MODIFY:I = 0x4

.field public static final MODIFY_DN:I = 0x8

.field public static final OID:Ljava/lang/String; = "2.16.840.1.113730.3.4.7"

.field private static final serialVersionUID:J = -0x15618bf6ecd98123L


# instance fields
.field private changeNumber:I

.field private changeType:I

.field private previousDN:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .parameter "encoded"

    .prologue
    .line 57
    const-string v0, "2.16.840.1.113730.3.4.7"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/harmony/javax/naming/ldap/BasicControl;-><init>(Ljava/lang/String;Z[B)V

    .line 59
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;->decodeContend()V

    .line 60
    return-void
.end method

.method private decodeContend()V
    .locals 3

    .prologue
    .line 64
    :try_start_0
    sget-object v1, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->EntryChangeNotificationControl:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 65
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;->value:[B

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    .line 64
    check-cast v0, [Ljava/lang/Object;

    .line 66
    .local v0, values:[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;->decodeValues([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0           #values:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public decodeValues([Ljava/lang/Object;)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 74
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;->changeType:I

    .line 75
    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    .line 76
    aget-object v0, p1, v1

    invoke-static {v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;->previousDN:Ljava/lang/String;

    .line 79
    :cond_0
    aget-object v0, p1, v2

    if-eqz v0, :cond_1

    .line 80
    aget-object v0, p1, v2

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;->changeNumber:I

    .line 82
    :cond_1
    return-void
.end method

.method public getChangeNumber()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;->changeNumber:I

    return v0
.end method

.method public getChangeType()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;->changeType:I

    return v0
.end method

.method public getJNDIChangeType()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;->changeType:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 107
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 113
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getPreviousDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;->previousDN:Ljava/lang/String;

    return-object v0
.end method
