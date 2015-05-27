.class Lorg/spongycastle/asn1/LazyConstructionEnumeration;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private abv:Lorg/spongycastle/asn1/ASN1InputStream;

.field private abw:Ljava/lang/Object;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([BZ)V

    iput-object v0, p0, Lorg/spongycastle/asn1/LazyConstructionEnumeration;->abv:Lorg/spongycastle/asn1/ASN1InputStream;

    .line 15
    invoke-direct {p0}, Lorg/spongycastle/asn1/LazyConstructionEnumeration;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/LazyConstructionEnumeration;->abw:Ljava/lang/Object;

    .line 16
    return-void
.end method

.method private readObject()Ljava/lang/Object;
    .locals 4

    .line 36
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/asn1/LazyConstructionEnumeration;->abv:Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 38
    :catch_0
    move-exception v3

    .line 40
    new-instance v0, Lorg/spongycastle/asn1/ASN1ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed DER construction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/spongycastle/asn1/LazyConstructionEnumeration;->abw:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    .line 25
    iget-object v1, p0, Lorg/spongycastle/asn1/LazyConstructionEnumeration;->abw:Ljava/lang/Object;

    .line 27
    invoke-direct {p0}, Lorg/spongycastle/asn1/LazyConstructionEnumeration;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/LazyConstructionEnumeration;->abw:Ljava/lang/Object;

    .line 29
    return-object v1
.end method
