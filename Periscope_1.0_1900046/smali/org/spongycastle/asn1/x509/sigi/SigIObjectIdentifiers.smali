.class public interface abstract Lorg/spongycastle/asn1/x509/sigi/SigIObjectIdentifiers;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final aCI:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final aCJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final aCK:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final aCL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final aCM:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final aCN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final aCO:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.36.8"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/sigi/SigIObjectIdentifiers;->aCI:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.36.8.2"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/sigi/SigIObjectIdentifiers;->aCJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.36.8.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/sigi/SigIObjectIdentifiers;->aCK:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 37
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.36.8.4"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/sigi/SigIObjectIdentifiers;->aCL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.36.8.2.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/sigi/SigIObjectIdentifiers;->aCM:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 51
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.36.8.4.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/sigi/SigIObjectIdentifiers;->aCN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.36.8.1.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/sigi/SigIObjectIdentifiers;->aCO:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
