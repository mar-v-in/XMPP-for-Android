.class public Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
.super Ljava/lang/Object;
.source "AttributeTypeAndValue.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field private static final C:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final CAPACITY:I

.field private static final CN:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final DNQ:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final GENERATION:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final GIVENNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final INITIALS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final KNOWN_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/security/utils/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final KNOWN_OIDS:[[Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final L:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final O:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final OU:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final RFC1779_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/security/utils/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final RFC2253_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/security/utils/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final RFC2459_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/security/utils/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERIALNUMBER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final SIZE:I

.field private static final ST:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final STREET:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final SURNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final T:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final UID:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field public static final attributeValue:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private final oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private final value:Lorg/apache/harmony/security/x501/AttributeValue;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x2

    const/16 v4, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x4

    .line 120
    new-instance v2, Ljava/util/HashMap;

    .line 121
    const/16 v3, 0x1e

    .line 120
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_NAMES:Ljava/util/HashMap;

    .line 124
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    .line 129
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    .line 133
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    .line 139
    sput v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CAPACITY:I

    .line 140
    sput v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SIZE:I

    .line 141
    sget v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SIZE:I

    sget v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CAPACITY:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/harmony/security/utils/ObjectIdentifier;

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_OIDS:[[Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 144
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    const-string v4, "C"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->C:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 145
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_1

    const-string v4, "CN"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CN:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 147
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 148
    new-array v3, v9, [I

    const/16 v4, 0x9

    aput v4, v3, v7

    const/16 v4, 0x926

    aput v4, v3, v8

    const/4 v4, 0x3

    const v5, 0x124f92c

    aput v5, v3, v4

    const/16 v4, 0x64

    aput v4, v3, v6

    const/4 v4, 0x5

    aput v7, v3, v4

    const/4 v4, 0x6

    const/16 v5, 0x19

    aput v5, v3, v4

    const-string v4, "DC"

    .line 149
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    .line 147
    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 151
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_2

    const-string v4, "DNQ"

    .line 152
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    .line 151
    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQ:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 153
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_3

    .line 154
    const-string v4, "DNQUALIFIER"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    .line 153
    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 156
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v9, [I

    fill-array-data v3, :array_4

    .line 157
    const-string v4, "EMAILADDRESS"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    .line 156
    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 159
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_5

    .line 160
    const-string v4, "GENERATION"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    .line 159
    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GENERATION:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 161
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_6

    .line 162
    const-string v4, "GIVENNAME"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    .line 161
    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GIVENNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 164
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_7

    const-string v4, "INITIALS"

    .line 165
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    .line 164
    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->INITIALS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 167
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_8

    const-string v4, "L"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->L:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 169
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_9

    const-string v4, "O"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->O:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 170
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_a

    const-string v4, "OU"

    .line 171
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    .line 170
    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->OU:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 173
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_b

    .line 174
    const-string v4, "SERIALNUMBER"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    .line 173
    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SERIALNUMBER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 175
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_c

    const-string v4, "ST"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ST:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 176
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_d

    const-string v4, "STREET"

    .line 177
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    .line 176
    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->STREET:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 178
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_e

    const-string v4, "SURNAME"

    .line 179
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    .line 178
    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SURNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 181
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_f

    const-string v4, "T"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->T:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 183
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 184
    new-array v3, v9, [I

    const/16 v4, 0x9

    aput v4, v3, v7

    const/16 v4, 0x926

    aput v4, v3, v8

    const/4 v4, 0x3

    const v5, 0x124f92c

    aput v5, v3, v4

    const/16 v4, 0x64

    aput v4, v3, v6

    const/4 v4, 0x5

    aput v7, v3, v4

    const/4 v4, 0x6

    aput v7, v3, v4

    const-string v4, "UID"

    .line 185
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    .line 183
    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->UID:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 190
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CN:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CN:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->L:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->L:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ST:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ST:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->O:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->O:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->OU:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->OU:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->C:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->C:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->STREET:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->STREET:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 203
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->UID:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->UID:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQ:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQ:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GENERATION:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GENERATION:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GIVENNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GIVENNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->INITIALS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->INITIALS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SERIALNUMBER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SERIALNUMBER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SURNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SURNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->T:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->T:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 225
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/utils/ObjectIdentifier;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 230
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 231
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 244
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 245
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 271
    new-instance v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue$1;

    .line 272
    const/16 v3, 0x13

    .line 271
    invoke-direct {v2, v3}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue$1;-><init>(I)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->attributeValue:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 371
    new-instance v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue$2;

    new-array v3, v8, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v4, 0x0

    .line 372
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->attributeValue:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v4, v3, v7

    .line 371
    invoke-direct {v2, v3}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 46
    return-void

    .line 226
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-static {v2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->addOID(Lorg/apache/harmony/security/utils/ObjectIdentifier;)V

    goto :goto_0

    .line 232
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 235
    .local v1, o:Ljava/lang/Object;
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    if-eq v1, v2, :cond_0

    .line 236
    check-cast v1, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .end local v1           #o:Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->addOID(Lorg/apache/harmony/security/utils/ObjectIdentifier;)V

    goto :goto_1

    .line 144
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 145
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 151
    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
    .end array-data

    .line 153
    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
    .end array-data

    .line 156
    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x48t 0x3t 0x0t 0x0t
        0x8dt 0xbbt 0x1t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 159
    :array_5
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    .line 161
    :array_6
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
    .end array-data

    .line 164
    :array_7
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
    .end array-data

    .line 167
    :array_8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 169
    :array_9
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 170
    :array_a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 173
    :array_b
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 175
    :array_c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 176
    :array_d
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    .line 178
    :array_e
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 181
    :array_f
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V
    .locals 5
    .parameter "sOid"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_2

    .line 468
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 470
    .local v0, array:[I
    invoke-static {v0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getOID([I)Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v1

    .line 471
    .local v1, thisOid:Lorg/apache/harmony/security/utils/ObjectIdentifier;
    if-nez v1, :cond_0

    .line 472
    new-instance v1, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .end local v1           #thisOid:Lorg/apache/harmony/security/utils/ObjectIdentifier;
    invoke-direct {v1, v0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([I)V

    .line 474
    .restart local v1       #thisOid:Lorg/apache/harmony/security/utils/ObjectIdentifier;
    :cond_0
    iput-object v1, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 482
    .end local v0           #array:[I
    .end local v1           #thisOid:Lorg/apache/harmony/security/utils/ObjectIdentifier;
    :cond_1
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    .line 483
    return-void

    .line 477
    :cond_2
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_NAMES:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    iput-object v2, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 478
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    if-nez v2, :cond_1

    .line 479
    new-instance v2, Ljava/io/IOException;

    const-string v3, "security.178"

    invoke-static {v3, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private constructor <init>([ILorg/apache/harmony/security/x501/AttributeValue;)V
    .locals 1
    .parameter "oid"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    invoke-static {p1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getOID([I)Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v0

    .line 445
    .local v0, thisOid:Lorg/apache/harmony/security/utils/ObjectIdentifier;
    if-nez v0, :cond_0

    .line 446
    new-instance v0, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .end local v0           #thisOid:Lorg/apache/harmony/security/utils/ObjectIdentifier;
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([I)V

    .line 448
    .restart local v0       #thisOid:Lorg/apache/harmony/security/utils/ObjectIdentifier;
    :cond_0
    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 449
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    .line 450
    return-void
.end method

.method synthetic constructor <init>([ILorg/apache/harmony/security/x501/AttributeValue;Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>([ILorg/apache/harmony/security/x501/AttributeValue;)V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)Lorg/apache/harmony/security/utils/ObjectIdentifier;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)Lorg/apache/harmony/security/x501/AttributeValue;
    .locals 1
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    return-object v0
.end method

.method private static addOID(Lorg/apache/harmony/security/utils/ObjectIdentifier;)V
    .locals 8
    .parameter "oid"

    .prologue
    .line 394
    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v3

    .line 395
    .local v3, newOid:[I
    invoke-static {v3}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->hashIntArray([I)I

    move-result v4

    sget v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CAPACITY:I

    rem-int v1, v4, v5

    .line 398
    .local v1, index:I
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_OIDS:[[Lorg/apache/harmony/security/utils/ObjectIdentifier;

    aget-object v2, v4, v1

    .line 399
    .local v2, list:[Lorg/apache/harmony/security/utils/ObjectIdentifier;
    const/4 v0, 0x0

    .line 400
    .local v0, i:I
    :goto_0
    aget-object v4, v2, v0

    if-nez v4, :cond_0

    .line 410
    sget v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CAPACITY:I

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_2

    .line 411
    new-instance v4, Ljava/lang/Error;

    const-string v5, "security.17C"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 403
    :cond_0
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 404
    new-instance v4, Ljava/lang/Error;

    const-string v5, "security.17B"

    .line 405
    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v2, v0

    invoke-virtual {v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v7

    .line 404
    invoke-static {v5, v6, v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 400
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_2
    aput-object p0, v2, v0

    .line 414
    return-void
.end method

.method private static getOID([I)Lorg/apache/harmony/security/utils/ObjectIdentifier;
    .locals 5
    .parameter "oid"

    .prologue
    .line 419
    invoke-static {p0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->hashIntArray([I)I

    move-result v3

    sget v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CAPACITY:I

    rem-int v1, v3, v4

    .line 422
    .local v1, index:I
    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_OIDS:[[Lorg/apache/harmony/security/utils/ObjectIdentifier;

    aget-object v2, v3, v1

    .line 423
    .local v2, list:[Lorg/apache/harmony/security/utils/ObjectIdentifier;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    aget-object v3, v2, v0

    if-nez v3, :cond_0

    .line 428
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 424
    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v3

    invoke-static {p0, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 425
    aget-object v3, v2, v0

    goto :goto_1

    .line 423
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static hashIntArray([I)I
    .locals 4
    .parameter "oid"

    .prologue
    .line 433
    const/4 v1, 0x0

    .line 434
    .local v1, intHash:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 437
    :cond_0
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    return v2

    .line 435
    :cond_1
    aget v2, p0, v0

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public appendName(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 6
    .parameter "attrFormat"
    .parameter "buf"

    .prologue
    const/16 v5, 0x3d

    .line 495
    const/4 v1, 0x0

    .line 496
    .local v1, hexFormat:Z
    const-string v3, "RFC1779"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 497
    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getGroup()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 498
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 503
    :goto_0
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 504
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    iget-object v3, v3, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-virtual {v4}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 506
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    :goto_1
    return-void

    .line 500
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->toOIDString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 507
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    iget-object v3, v3, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    iget-object v4, v4, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 509
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-virtual {v3, p2}, Lorg/apache/harmony/security/x501/AttributeValue;->appendQEString(Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 511
    :cond_2
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    iget-object v3, v3, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 514
    :cond_3
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getGroup()Ljava/lang/Object;

    move-result-object v0

    .line 516
    .local v0, group:Ljava/lang/Object;
    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    if-eq v3, v0, :cond_4

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    if-ne v3, v0, :cond_6

    .line 517
    :cond_4
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    const-string v3, "CANONICAL"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 522
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->getTag()I

    move-result v2

    .line 523
    .local v2, tag:I
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1StringType;->checkTag(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 524
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1StringType;->checkTag(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 525
    const/4 v1, 0x1

    .line 534
    .end local v2           #tag:I
    :cond_5
    :goto_2
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 536
    if-eqz v1, :cond_7

    .line 537
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 530
    :cond_6
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    const/4 v1, 0x1

    goto :goto_2

    .line 539
    :cond_7
    const-string v3, "CANONICAL"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 540
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->makeCanonical()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 542
    :cond_8
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    iget-object v3, v3, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method

.method public getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    return-object v0
.end method
