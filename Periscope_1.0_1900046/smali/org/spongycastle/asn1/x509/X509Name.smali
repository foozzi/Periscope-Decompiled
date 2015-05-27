.class public Lorg/spongycastle/asn1/x509/X509Name;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field private static final FALSE:Ljava/lang/Boolean;

.field private static final TRUE:Ljava/lang/Boolean;

.field public static aBO:Z

.field public static final aBP:Ljava/util/Hashtable;

.field public static final aBQ:Ljava/util/Hashtable;

.field public static final aBR:Ljava/util/Hashtable;

.field public static final aBS:Ljava/util/Hashtable;

.field public static final awA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awD:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awF:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awG:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awH:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awI:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awK:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awM:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awO:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awQ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awR:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awU:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awW:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awX:Ljava/util/Hashtable;

.field public static final awY:Ljava/util/Hashtable;

.field public static final awo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awp:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awq:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awr:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final aws:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awt:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awu:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awv:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final aww:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awx:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awz:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private aBT:Lorg/spongycastle/asn1/x509/X509NameEntryConverter;

.field private aBU:Ljava/util/Vector;

.field private agu:Lorg/spongycastle/asn1/ASN1Sequence;

.field private awh:Z

.field private awi:I

.field private azA:Ljava/util/Vector;

.field private azp:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 51
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.10"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awp:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 57
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.11"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awq:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 63
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.12"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awr:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 69
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.3"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aws:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 74
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.5"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awt:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 79
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.9"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awu:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awt:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awv:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 89
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.7"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aww:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 94
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.8"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awx:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 99
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.4"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 100
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.42"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awz:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 101
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.43"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 102
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.44"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 103
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.45"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 108
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.15"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awD:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 114
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.17"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 120
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.46"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awF:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 126
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.65"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awG:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 133
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awH:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 139
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.2"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awI:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 145
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.3"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 152
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.4"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awK:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 159
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.5"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 166
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.36.8.3.14"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awM:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 172
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.16"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 177
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.54"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awO:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 182
    sget-object v0, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->aCb:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 187
    sget-object v0, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->aCc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awQ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 194
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->arb:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awR:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 199
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->arc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 200
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->ari:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 205
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awR:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awU:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 210
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "0.9.2342.19200300.100.1.25"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 215
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "0.9.2342.19200300.100.1.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awW:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 221
    const/4 v0, 0x0

    sput-boolean v0, Lorg/spongycastle/asn1/x509/X509Name;->aBO:Z

    .line 227
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    .line 233
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBP:Ljava/util/Hashtable;

    .line 239
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBQ:Ljava/util/Hashtable;

    .line 244
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    .line 250
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBR:Ljava/util/Hashtable;

    .line 256
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBS:Ljava/util/Hashtable;

    .line 258
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->TRUE:Ljava/lang/Boolean;

    .line 259
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lorg/spongycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    .line 263
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awp:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "O"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awr:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awq:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "OU"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->aws:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->aww:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "L"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awx:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awt:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SERIALNUMBER"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awR:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "E"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awW:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "UID"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awu:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "STREET"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SURNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awz:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "GIVENNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "INITIALS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "GENERATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "unstructuredAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "unstructuredName"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "UniqueIdentifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awF:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awG:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "Pseudonym"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "PostalAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awM:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "NameAtBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awK:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "CountryOfCitizenship"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "CountryOfResidence"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "Gender"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awI:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "PlaceOfBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awH:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DateOfBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "PostalCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awD:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "BusinessCategory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "TelephoneNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awQ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "Name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBP:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBP:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awp:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "O"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBP:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awq:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "OU"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBP:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->aws:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBP:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->aww:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "L"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBP:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awx:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBP:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awu:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "STREET"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBP:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBP:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awW:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "UID"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBQ:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBQ:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awp:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "O"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBQ:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awq:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "OU"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBQ:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->aws:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBQ:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->aww:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "L"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBQ:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awx:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->aBQ:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awu:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "STREET"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "c"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "o"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awp:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "t"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awr:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "ou"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awq:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "cn"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->aws:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "l"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->aww:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "st"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awx:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "sn"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awt:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "serialnumber"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awt:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "street"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awu:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "emailaddress"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awU:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "dc"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "e"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awU:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "uid"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awW:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "surname"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "givenname"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awz:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "initials"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "generation"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "unstructuredaddress"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "unstructuredname"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "uniqueidentifier"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "dn"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awF:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "pseudonym"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awG:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "postaladdress"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "nameofbirth"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awM:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "countryofcitizenship"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awK:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "countryofresidence"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "gender"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "placeofbirth"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awI:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "dateofbirth"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awH:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "postalcode"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "businesscategory"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awD:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "telephonenumber"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Name;->awY:Ljava/util/Hashtable;

    const-string v1, "name"

    sget-object v2, Lorg/spongycastle/asn1/x509/X509Name;->awQ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 394
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->aBT:Lorg/spongycastle/asn1/x509/X509NameEntryConverter;

    .line 351
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azp:Ljava/util/Vector;

    .line 352
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azA:Ljava/util/Vector;

    .line 353
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->aBU:Ljava/util/Vector;

    .line 396
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 10

    .line 405
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->aBT:Lorg/spongycastle/asn1/x509/X509NameEntryConverter;

    .line 351
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azp:Ljava/util/Vector;

    .line 352
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azA:Ljava/util/Vector;

    .line 353
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->aBU:Ljava/util/Vector;

    .line 406
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/X509Name;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 408
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v4

    .line 410
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 412
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Set;->ɩ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v5

    .line 414
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 416
    invoke-virtual {v5, v6}, Lorg/spongycastle/asn1/ASN1Set;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v7

    .line 418
    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 420
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badly sized pair"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azp:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﹴ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 425
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v8

    .line 426
    instance-of v0, v8, Lorg/spongycastle/asn1/ASN1String;

    if-eqz v0, :cond_2

    instance-of v0, v8, Lorg/spongycastle/asn1/DERUniversalString;

    if-nez v0, :cond_2

    .line 428
    move-object v0, v8

    check-cast v0, Lorg/spongycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v9

    .line 429
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    .line 431
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azA:Ljava/util/Vector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 435
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azA:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 437
    :goto_2
    goto :goto_3

    .line 442
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azA:Ljava/util/Vector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/util/encoders/Hex;->ײ([B)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/x509/X509Name;->ᴵ([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    goto :goto_3

    .line 444
    :catch_0
    move-exception v9

    .line 446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot encode value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :goto_3
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->aBU:Ljava/util/Vector;

    if-eqz v6, :cond_3

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_3
    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 414
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 451
    :cond_4
    goto/16 :goto_0

    .line 452
    :cond_5
    return-void
.end method

.method private ˊ(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .locals 5

    .line 1228
    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1230
    if-eqz v2, :cond_0

    .line 1232
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1236
    :cond_0
    invoke-virtual {p3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1239
    :goto_0
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1241
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 1242
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1243
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 1245
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    .line 1247
    add-int/lit8 v3, v3, 0x2

    .line 1250
    :cond_1
    :goto_1
    if-ge v3, v4, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 1252
    const-string v0, "\\"

    invoke-virtual {p1, v3, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1253
    add-int/lit8 v3, v3, 0x2

    .line 1254
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1257
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, -0x1

    if-le v4, v3, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 1259
    const/16 v0, 0x5c

    invoke-virtual {p1, v4, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1262
    :cond_3
    :goto_3
    if-gt v3, v4, :cond_4

    .line 1264
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_4

    .line 1274
    :sswitch_0
    const-string v0, "\\"

    invoke-virtual {p1, v3, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1275
    add-int/lit8 v3, v3, 0x2

    .line 1276
    add-int/lit8 v4, v4, 0x1

    .line 1277
    goto :goto_3

    .line 1279
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 1280
    goto :goto_3

    .line 1283
    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private د(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1170
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->ʰ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1172
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 1174
    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/x509/X509Name;->ہ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 1176
    instance-of v0, v3, Lorg/spongycastle/asn1/ASN1String;

    if-eqz v0, :cond_0

    .line 1178
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->ʰ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1182
    :cond_0
    return-object v2
.end method

.method private ہ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 1189
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1191
    :catch_0
    move-exception v3

    .line 1193
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown encoding in name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ܝ(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1200
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1204
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1208
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 1210
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1211
    const/16 v0, 0x20

    if-ne v2, v0, :cond_0

    const/16 v0, 0x20

    if-eq v4, v0, :cond_1

    .line 1213
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1215
    :cond_1
    move v2, v4

    .line 1208
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1219
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ᙆ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509Name;
    .locals 2

    .line 377
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/x509/X509Name;

    if-eqz v0, :cond_1

    .line 379
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/X509Name;

    return-object v0

    .line 381
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_2

    .line 383
    new-instance v0, Lorg/spongycastle/asn1/x509/X509Name;

    move-object v1, p0

    check-cast v1, Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x500/X500Name;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/X509Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 385
    :cond_2
    if-eqz p0, :cond_3

    .line 387
    new-instance v0, Lorg/spongycastle/asn1/x509/X509Name;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/X509Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 390
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private ᴵ([B)Ljava/lang/String;
    .locals 4

    .line 1365
    array-length v0, p1

    new-array v2, v0, [C

    .line 1367
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-eq v3, v0, :cond_0

    .line 1369
    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    aput-char v0, v2, v3

    .line 1367
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1372
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private ᵢ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1151
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/x509/X509Name;->د(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1152
    invoke-direct {p0, p2}, Lorg/spongycastle/asn1/x509/X509Name;->د(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1154
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/x509/X509Name;->ܝ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1157
    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/x509/X509Name;->ܝ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1159
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1161
    const/4 v0, 0x0

    return v0

    .line 1165
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 17

    .line 1061
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_0

    .line 1063
    const/4 v0, 0x1

    return v0

    .line 1066
    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/spongycastle/asn1/x509/X509Name;

    if-nez v0, :cond_1

    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_1

    .line 1068
    const/4 v0, 0x0

    return v0

    .line 1071
    :cond_1
    move-object/from16 v0, p1

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 1073
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/X509Name;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1075
    const/4 v0, 0x1

    return v0

    .line 1082
    :cond_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/asn1/x509/X509Name;->ᙆ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509Name;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1087
    goto :goto_0

    .line 1084
    :catch_0
    move-exception v5

    .line 1086
    const/4 v0, 0x0

    return v0

    .line 1089
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/asn1/x509/X509Name;->azp:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1091
    iget-object v0, v4, Lorg/spongycastle/asn1/x509/X509Name;->azp:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v5, v0, :cond_3

    .line 1093
    const/4 v0, 0x0

    return v0

    .line 1096
    :cond_3
    new-array v6, v5, [Z

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/asn1/x509/X509Name;->azp:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v4, Lorg/spongycastle/asn1/x509/X509Name;->azp:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1101
    const/4 v7, 0x0

    .line 1102
    move v8, v5

    .line 1103
    const/4 v9, 0x1

    goto :goto_1

    .line 1107
    :cond_4
    add-int/lit8 v7, v5, -0x1

    .line 1108
    const/4 v8, -0x1

    .line 1109
    const/4 v9, -0x1

    .line 1112
    :goto_1
    move v10, v7

    :goto_2
    if-eq v10, v8, :cond_9

    .line 1114
    const/4 v11, 0x0

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/asn1/x509/X509Name;->azp:Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v12, v0

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/asn1/x509/X509Name;->azA:Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 1118
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v5, :cond_7

    .line 1120
    aget-boolean v0, v6, v14

    if-eqz v0, :cond_5

    .line 1122
    goto :goto_4

    .line 1125
    :cond_5
    iget-object v0, v4, Lorg/spongycastle/asn1/x509/X509Name;->azp:Ljava/util/Vector;

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v15, v0

    .line 1127
    invoke-virtual {v12, v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1129
    iget-object v0, v4, Lorg/spongycastle/asn1/x509/X509Name;->azA:Ljava/util/Vector;

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1131
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1}, Lorg/spongycastle/asn1/x509/X509Name;->ᵢ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1133
    const/4 v0, 0x1

    aput-boolean v0, v6, v14

    .line 1134
    const/4 v11, 0x1

    .line 1135
    goto :goto_5

    .line 1118
    :cond_6
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1140
    :cond_7
    :goto_5
    if-nez v11, :cond_8

    .line 1142
    const/4 v0, 0x0

    return v0

    .line 1112
    :cond_8
    add-int/2addr v10, v9

    goto/16 :goto_2

    .line 1146
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 8

    .line 921
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_3

    .line 923
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 924
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 925
    const/4 v3, 0x0

    .line 927
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azp:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v4, v0, :cond_2

    .line 929
    new-instance v5, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 930
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azp:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v6, v0

    .line 932
    invoke-virtual {v5, v6}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 934
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azA:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 936
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->aBT:Lorg/spongycastle/asn1/x509/X509NameEntryConverter;

    invoke-virtual {v0, v6, v7}, Lorg/spongycastle/asn1/x509/X509NameEntryConverter;->ˏ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 938
    if-eqz v3, :cond_0

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->aBU:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 941
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v5}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 945
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 946
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 948
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v5}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 951
    :goto_1
    move-object v3, v6

    .line 927
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 954
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 956
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 959
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1034
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->awh:Z

    if-eqz v0, :cond_0

    .line 1036
    iget v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->awi:I

    return v0

    .line 1039
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->awh:Z

    .line 1042
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azp:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v2, v0, :cond_1

    .line 1044
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azA:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 1046
    invoke-direct {p0, v3}, Lorg/spongycastle/asn1/x509/X509Name;->د(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1047
    invoke-direct {p0, v3}, Lorg/spongycastle/asn1/x509/X509Name;->ܝ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1049
    iget v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->awi:I

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/X509Name;->azp:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->awi:I

    .line 1050
    iget v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->awi:I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->awi:I

    .line 1042
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1053
    :cond_1
    iget v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->awi:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1377
    sget-boolean v0, Lorg/spongycastle/asn1/x509/X509Name;->aBO:Z

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->awX:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/asn1/x509/X509Name;->ˊ(ZLjava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ʽ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/util/Vector;
    .locals 5

    .line 897
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 899
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azA:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v3, v0, :cond_2

    .line 901
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azp:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azA:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 905
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 907
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 911
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 899
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 916
    :cond_2
    return-object v2
.end method

.method public ˊ(ZLjava/util/Hashtable;)Ljava/lang/String;
    .locals 7

    .line 1301
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1302
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1303
    const/4 v4, 0x1

    .line 1305
    const/4 v5, 0x0

    .line 1307
    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azp:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 1309
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->aBU:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1311
    const/16 v0, 0x2b

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1312
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azp:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/X509Name;->azA:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v5, p2, v0, v1}, Lorg/spongycastle/asn1/x509/X509Name;->ˊ(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    goto :goto_1

    .line 1318
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1319
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/X509Name;->azp:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/X509Name;->azA:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v5, p2, v0, v1}, Lorg/spongycastle/asn1/x509/X509Name;->ˊ(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1322
    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1307
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1326
    :cond_1
    if-eqz p1, :cond_4

    .line 1328
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    :goto_2
    if-ltz v6, :cond_3

    .line 1330
    if-eqz v4, :cond_2

    .line 1332
    const/4 v4, 0x0

    goto :goto_3

    .line 1336
    :cond_2
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1339
    :goto_3
    invoke-virtual {v3, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1328
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_3
    goto :goto_6

    .line 1344
    :cond_4
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 1346
    if-eqz v4, :cond_5

    .line 1348
    const/4 v4, 0x0

    goto :goto_5

    .line 1352
    :cond_5
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1355
    :goto_5
    invoke-virtual {v3, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1344
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1359
    :cond_6
    :goto_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
