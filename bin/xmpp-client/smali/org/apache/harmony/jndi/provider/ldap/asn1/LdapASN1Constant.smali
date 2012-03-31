.class public Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;
.super Ljava/lang/Object;
.source "LdapASN1Constant.java"


# static fields
.field public static final AbandonRequest:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final AddRequest:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final AddResponse:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final Attribute:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final AttributeList:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final AttributeTypeAndValues:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final AttributeValueAssertion:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final AuthenticationChoice:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final BindRequest:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final BindResponse:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final CompareRequest:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final CompareResponse:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final Control:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final DelRequest:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final DelResponse:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final EntryChangeNotificationControl:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final ExtendedRequest:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final ExtendedResponse:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final Filter:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final LDAPMessage:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final LDAPResult:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final MatchingRuleAssertion:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final ModifyDNRequest:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final ModifyDNResponse:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final ModifyRequest:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final ModifyResponse:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final OP_ABANDON_REQUEST:I = 0x11

.field public static final OP_ADD_REQUEST:I = 0x9

.field public static final OP_ADD_RESPONSE:I = 0xa

.field public static final OP_BIND_REQUEST:I = 0x0

.field public static final OP_BIND_RESPONSE:I = 0x1

.field public static final OP_COMPARE_REQUEST:I = 0xf

.field public static final OP_COMPARE_RESPONSE:I = 0x10

.field public static final OP_DEL_REQUEST:I = 0xb

.field public static final OP_DEL_RESPONSE:I = 0xc

.field public static final OP_EXTENDED_REQUEST:I = 0x12

.field public static final OP_EXTENDED_RESPONSE:I = 0x13

.field public static final OP_MODIFY_DN_REQUEST:I = 0xd

.field public static final OP_MODIFY_DN_RESPONSE:I = 0xe

.field public static final OP_MODIFY_REQUEST:I = 0x7

.field public static final OP_MODIFY_RESPONSE:I = 0x8

.field public static final OP_SEARCH_REQUEST:I = 0x3

.field public static final OP_SEARCH_RESULT_DONE:I = 0x5

.field public static final OP_SEARCH_RESULT_ENTRY:I = 0x4

.field public static final OP_SEARCH_RESULT_REF:I = 0x6

.field public static final OP_UNBIND_REQUEST:I = 0x2

.field public static final PartialAttributeList:Lorg/apache/harmony/security/asn1/ASN1Type;

.field public static final PersistentSearchControl:Lorg/apache/harmony/security/asn1/ASN1Type;

.field public static final SaslCredentials:Lorg/apache/harmony/security/asn1/ASN1Type;

.field public static final SearchRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

.field public static final SearchResultDone:Lorg/apache/harmony/security/asn1/ASN1Type;

.field public static final SearchResultEntry:Lorg/apache/harmony/security/asn1/ASN1Type;

.field public static final SearchResultReference:Lorg/apache/harmony/security/asn1/ASN1Type;

.field public static final SubstringFilter:Lorg/apache/harmony/security/asn1/ASN1Type;

.field public static final UnbindRequest:Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0x40

    const/16 v11, 0x80

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 76
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;

    .line 77
    new-array v1, v10, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v1, v8

    .line 78
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v9

    .line 76
    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->Attribute:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 80
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    .line 81
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;

    new-array v2, v10, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 82
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v3

    aput-object v3, v2, v8

    .line 83
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v2, v9

    .line 81
    invoke-direct {v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 80
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->AttributeList:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 85
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 86
    const/16 v1, 0x8

    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;

    .line 87
    new-array v3, v10, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v4

    aput-object v4, v3, v8

    .line 88
    sget-object v4, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->AttributeList:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v4, v3, v9

    invoke-direct {v2, v3}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 85
    invoke-direct {v0, v12, v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->AddRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 90
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$1;

    .line 91
    new-array v1, v10, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v1, v8

    .line 92
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v1, v9

    .line 90
    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->SaslCredentials:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 98
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap;

    .line 99
    new-array v1, v10, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 100
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 101
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v3

    .line 100
    invoke-direct {v2, v11, v8, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v8

    .line 102
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v3, 0x3

    .line 103
    sget-object v4, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->SaslCredentials:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 102
    invoke-direct {v2, v11, v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v9

    .line 98
    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->AuthenticationChoice:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 105
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$2;

    .line 106
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Enumerated;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Enumerated;

    move-result-object v2

    aput-object v2, v1, v8

    .line 107
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v1, v9

    .line 108
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v1, v10

    const/4 v2, 0x3

    .line 109
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x3

    .line 110
    new-instance v5, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 109
    invoke-direct {v3, v11, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    .line 105
    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->LDAPResult:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 116
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 117
    const/16 v1, 0x9

    sget-object v2, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->LDAPResult:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 116
    invoke-direct {v0, v12, v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->AddResponse:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 119
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$3;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 120
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v1, v8

    .line 121
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v2

    aput-object v2, v1, v9

    .line 122
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v1, v10

    .line 119
    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$3;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->Control:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 129
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 130
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;

    .line 131
    const/4 v2, 0x3

    new-array v2, v2, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    aput-object v3, v2, v8

    .line 132
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v3

    aput-object v3, v2, v9

    .line 133
    sget-object v3, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->AuthenticationChoice:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v3, v2, v10

    invoke-direct {v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 129
    invoke-direct {v0, v12, v8, v1}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->BindRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 135
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 137
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->LDAPResult:Lorg/apache/harmony/security/asn1/ASN1Type;

    check-cast v0, Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 138
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$4;

    new-array v3, v9, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v4, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 139
    const/4 v5, 0x7

    .line 140
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v6

    invoke-direct {v4, v11, v5, v6}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v4, v3, v8

    .line 138
    invoke-direct {v2, v3}, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$4;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 136
    invoke-static {v0, v2}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->conjoinSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;Lorg/apache/harmony/security/asn1/ASN1Sequence;)Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-result-object v0

    .line 135
    invoke-direct {v1, v12, v9, v0}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v1, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->BindResponse:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 146
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 147
    invoke-static {}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Null;->getInstance()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Null;

    move-result-object v1

    .line 146
    invoke-direct {v0, v12, v10, v1}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->UnbindRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 149
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;

    .line 150
    new-array v1, v10, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v1, v8

    .line 151
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v1, v9

    .line 149
    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->AttributeValueAssertion:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 153
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 154
    const/16 v1, 0x10

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    .line 153
    invoke-direct {v0, v12, v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->AbandonRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 156
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 157
    const/16 v1, 0xe

    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;

    .line 158
    new-array v3, v10, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v4

    aput-object v4, v3, v8

    .line 159
    sget-object v4, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->AttributeValueAssertion:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v4, v3, v9

    invoke-direct {v2, v3}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 156
    invoke-direct {v0, v12, v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->CompareRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 161
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 162
    const/16 v1, 0xf

    sget-object v2, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->LDAPResult:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 161
    invoke-direct {v0, v12, v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->CompareResponse:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 164
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 165
    const/16 v1, 0xa

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    .line 164
    invoke-direct {v0, v12, v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->DelRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 167
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 168
    const/16 v1, 0xb

    sget-object v2, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->LDAPResult:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 167
    invoke-direct {v0, v12, v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->DelResponse:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 170
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 171
    const/16 v1, 0x17

    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$5;

    .line 172
    new-array v3, v10, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 173
    new-instance v4, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 175
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v5

    .line 173
    invoke-direct {v4, v11, v8, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v4, v3, v8

    .line 176
    new-instance v4, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 178
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v5

    .line 176
    invoke-direct {v4, v11, v9, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v4, v3, v9

    invoke-direct {v2, v3}, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$5;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 170
    invoke-direct {v0, v12, v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->ExtendedRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 184
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 185
    const/16 v2, 0x18

    .line 186
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->LDAPResult:Lorg/apache/harmony/security/asn1/ASN1Type;

    check-cast v0, Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 187
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$6;

    new-array v4, v10, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 188
    new-instance v5, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 189
    const/16 v6, 0xa

    .line 190
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v7

    .line 188
    invoke-direct {v5, v11, v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v5, v4, v8

    .line 191
    new-instance v5, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 192
    const/16 v6, 0xb

    .line 193
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v7

    .line 191
    invoke-direct {v5, v11, v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v5, v4, v9

    .line 187
    invoke-direct {v3, v4}, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$6;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 185
    invoke-static {v0, v3}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->conjoinSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;Lorg/apache/harmony/security/asn1/ASN1Sequence;)Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-result-object v0

    .line 184
    invoke-direct {v1, v12, v2, v0}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v1, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->ExtendedResponse:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 200
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 201
    const/16 v1, 0xc

    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$7;

    .line 202
    const/4 v3, 0x4

    new-array v3, v3, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v4

    aput-object v4, v3, v8

    .line 203
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v4

    aput-object v4, v3, v9

    .line 204
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v4

    aput-object v4, v3, v10

    const/4 v4, 0x3

    .line 205
    new-instance v5, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 207
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v6

    .line 205
    invoke-direct {v5, v11, v8, v6}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$7;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 200
    invoke-direct {v0, v12, v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->ModifyDNRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 213
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 214
    const/16 v1, 0xd

    sget-object v2, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->LDAPResult:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 213
    invoke-direct {v0, v12, v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->ModifyDNResponse:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 216
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;

    .line 217
    new-array v1, v10, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v1, v8

    .line 218
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v9

    .line 216
    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->AttributeTypeAndValues:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 220
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 221
    const/4 v1, 0x6

    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;

    .line 222
    new-array v3, v10, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 223
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v4

    aput-object v4, v3, v8

    .line 224
    new-instance v4, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    new-instance v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;

    .line 225
    new-array v6, v10, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 226
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Enumerated;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Enumerated;

    move-result-object v7

    aput-object v7, v6, v8

    .line 227
    sget-object v7, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->AttributeTypeAndValues:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v7, v6, v9

    invoke-direct {v5, v6}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 224
    invoke-direct {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v4, v3, v9

    invoke-direct {v2, v3}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 220
    invoke-direct {v0, v12, v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->ModifyRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 229
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 230
    const/4 v1, 0x7

    sget-object v2, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->LDAPResult:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 229
    invoke-direct {v0, v12, v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->ModifyResponse:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 232
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;

    .line 233
    new-array v1, v10, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v1, v8

    .line 234
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    .line 235
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap;

    .line 236
    const/4 v4, 0x3

    new-array v4, v4, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 237
    new-instance v5, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 241
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v6

    .line 237
    invoke-direct {v5, v11, v8, v6}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v5, v4, v8

    .line 242
    new-instance v5, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 246
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v6

    .line 242
    invoke-direct {v5, v11, v9, v6}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v5, v4, v9

    .line 247
    new-instance v5, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 251
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v6

    .line 247
    invoke-direct {v5, v11, v10, v6}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v5, v4, v10

    .line 235
    invoke-direct {v3, v4}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 234
    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v9

    .line 232
    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->SubstringFilter:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 253
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$8;

    .line 254
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 255
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 256
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v3

    .line 255
    invoke-direct {v2, v11, v9, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v8

    .line 257
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 258
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v3

    .line 257
    invoke-direct {v2, v11, v10, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v9

    .line 259
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v3, 0x3

    .line 260
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v4

    .line 259
    invoke-direct {v2, v11, v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v10

    const/4 v2, 0x3

    .line 261
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x4

    .line 262
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v5

    .line 261
    invoke-direct {v3, v11, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    .line 253
    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$8;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->MatchingRuleAssertion:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 270
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap;

    const/16 v1, 0xa

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 271
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 272
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    new-instance v4, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1LdapFilter;

    invoke-direct {v4}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1LdapFilter;-><init>()V

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 271
    invoke-direct {v2, v11, v8, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v8

    .line 273
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 274
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    new-instance v4, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1LdapFilter;

    invoke-direct {v4}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1LdapFilter;-><init>()V

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 273
    invoke-direct {v2, v11, v9, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v9

    .line 275
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 276
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1LdapFilter;

    invoke-direct {v3}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1LdapFilter;-><init>()V

    .line 275
    invoke-direct {v2, v11, v10, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v10

    const/4 v2, 0x3

    .line 277
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x3

    .line 278
    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->AttributeValueAssertion:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 277
    invoke-direct {v3, v11, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 279
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x4

    .line 280
    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->SubstringFilter:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 279
    invoke-direct {v3, v11, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 281
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x5

    .line 282
    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->AttributeValueAssertion:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 281
    invoke-direct {v3, v11, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 283
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x6

    .line 284
    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->AttributeValueAssertion:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 283
    invoke-direct {v3, v11, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 285
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x7

    .line 286
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v5

    .line 285
    invoke-direct {v3, v11, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 287
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/16 v4, 0x8

    .line 288
    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->AttributeValueAssertion:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 287
    invoke-direct {v3, v11, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 289
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/16 v4, 0x9

    .line 290
    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->MatchingRuleAssertion:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 289
    invoke-direct {v3, v11, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    .line 270
    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->Filter:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 292
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 293
    const/4 v1, 0x3

    .line 294
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;

    const/16 v3, 0x8

    new-array v3, v3, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 295
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v4

    aput-object v4, v3, v8

    .line 296
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Enumerated;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Enumerated;

    move-result-object v4

    aput-object v4, v3, v9

    .line 297
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Enumerated;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Enumerated;

    move-result-object v4

    aput-object v4, v3, v10

    const/4 v4, 0x3

    .line 298
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 299
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 300
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 301
    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->Filter:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 302
    new-instance v5, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v5, v3, v4

    .line 294
    invoke-direct {v2, v3}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 292
    invoke-direct {v0, v12, v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->SearchRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 304
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    .line 305
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;

    new-array v2, v10, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 306
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v3

    aput-object v3, v2, v8

    .line 307
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v2, v9

    .line 305
    invoke-direct {v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 304
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->PartialAttributeList:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 309
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 310
    const/4 v1, 0x4

    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;

    .line 311
    new-array v3, v10, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v4

    aput-object v4, v3, v8

    .line 312
    sget-object v4, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->PartialAttributeList:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v4, v3, v9

    invoke-direct {v2, v3}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 309
    invoke-direct {v0, v12, v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->SearchResultEntry:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 314
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 315
    const/16 v1, 0x13

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    .line 316
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 314
    invoke-direct {v0, v12, v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->SearchResultReference:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 318
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 319
    const/4 v1, 0x5

    sget-object v2, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->LDAPResult:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 318
    invoke-direct {v0, v12, v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->SearchResultDone:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 321
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$9;

    .line 322
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 323
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v8

    .line 324
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap;

    const/16 v3, 0x14

    new-array v3, v3, [Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v4, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->BindRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v4, v3, v8

    .line 325
    sget-object v4, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->BindResponse:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v4, v3, v9

    sget-object v4, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->UnbindRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v4, v3, v10

    const/4 v4, 0x3

    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->SearchRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 326
    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->SearchResultEntry:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->SearchResultDone:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 327
    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->SearchResultReference:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->ModifyRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 328
    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->ModifyResponse:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    const/16 v4, 0x9

    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->AddRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    const/16 v4, 0xa

    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->AddResponse:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    const/16 v4, 0xb

    .line 329
    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->DelRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    const/16 v4, 0xc

    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->DelResponse:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    const/16 v4, 0xd

    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->ModifyDNRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    const/16 v4, 0xe

    .line 330
    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->ModifyDNResponse:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    const/16 v4, 0xf

    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->CompareRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    const/16 v4, 0x10

    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->CompareResponse:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    const/16 v4, 0x11

    .line 331
    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->AbandonRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    const/16 v4, 0x12

    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->ExtendedRequest:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    const/16 v4, 0x13

    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->ExtendedResponse:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    .line 324
    invoke-direct {v2, v3}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v9

    .line 332
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    .line 333
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    sget-object v4, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->Control:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 332
    invoke-direct {v2, v11, v8, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v10

    .line 321
    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$9;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->LDAPMessage:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 339
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;

    .line 340
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Integer;

    invoke-direct {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;-><init>()V

    aput-object v2, v1, v8

    .line 341
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Boolean;

    invoke-direct {v2}, Lorg/apache/harmony/security/asn1/ASN1Boolean;-><init>()V

    aput-object v2, v1, v9

    .line 342
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Boolean;

    invoke-direct {v2}, Lorg/apache/harmony/security/asn1/ASN1Boolean;-><init>()V

    aput-object v2, v1, v10

    .line 339
    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1SequenceWrap;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->PersistentSearchControl:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 344
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$10;

    .line 345
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Enumerated;

    invoke-direct {v2}, Lorg/apache/harmony/security/asn1/ASN1Enumerated;-><init>()V

    aput-object v2, v1, v8

    .line 346
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1OctetString;

    invoke-direct {v2}, Lorg/apache/harmony/security/asn1/ASN1OctetString;-><init>()V

    aput-object v2, v1, v9

    .line 347
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Integer;

    invoke-direct {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;-><init>()V

    aput-object v2, v1, v10

    .line 344
    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant$10;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->EntryChangeNotificationControl:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
