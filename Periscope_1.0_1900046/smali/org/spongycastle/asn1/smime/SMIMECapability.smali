.class public Lorg/spongycastle/asn1/smime/SMIMECapability;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field public static final arv:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final arw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final arx:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final auA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final auB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final auC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final auE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final auF:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final auG:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private auH:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private auI:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->arv:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapability;->arv:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->arw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapability;->arw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->arx:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapability;->arx:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.14.3.2.7"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapability;->auA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqO:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapability;->auB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapability;->auC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aoj:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapability;->auE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aoq:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapability;->auF:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aox:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapability;->auG:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 92
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/smime/SMIMECapability;->auH:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 96
    iget-object v0, p0, Lorg/spongycastle/asn1/smime/SMIMECapability;->auI:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/spongycastle/asn1/smime/SMIMECapability;->auI:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 101
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
