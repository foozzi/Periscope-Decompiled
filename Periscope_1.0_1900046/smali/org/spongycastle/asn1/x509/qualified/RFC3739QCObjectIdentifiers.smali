.class public interface abstract Lorg/spongycastle/asn1/x509/qualified/RFC3739QCObjectIdentifiers;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final aCv:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final aCw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.11.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/qualified/RFC3739QCObjectIdentifiers;->aCv:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 10
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.11.2"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/qualified/RFC3739QCObjectIdentifiers;->aCw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method