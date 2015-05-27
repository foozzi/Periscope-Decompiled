.class public Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aAz:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;->aAz:[B

    .line 51
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 66
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;->aAz:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method public gY()[B
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;->aAz:[B

    return-object v0
.end method
