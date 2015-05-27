.class public Lorg/spongycastle/asn1/smime/SMIMECapabilities;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field public static final arv:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final arw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final auA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final auB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final auC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final auz:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private auD:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->arv:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->arv:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->arw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->arw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->arx:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->auz:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.14.3.2.7"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->auA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqO:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->auB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->auC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->auD:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
