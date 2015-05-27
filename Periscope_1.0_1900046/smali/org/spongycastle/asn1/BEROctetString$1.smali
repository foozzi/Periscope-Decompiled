.class Lorg/spongycastle/asn1/BEROctetString$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field aaN:I

.field final synthetic aaO:Lorg/spongycastle/asn1/BEROctetString;


# direct methods
.method constructor <init>(Lorg/spongycastle/asn1/BEROctetString;)V
    .locals 1

    .line 77
    iput-object p1, p0, Lorg/spongycastle/asn1/BEROctetString$1;->aaO:Lorg/spongycastle/asn1/BEROctetString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/BEROctetString$1;->aaN:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    .line 82
    iget v0, p0, Lorg/spongycastle/asn1/BEROctetString$1;->aaN:I

    iget-object v1, p0, Lorg/spongycastle/asn1/BEROctetString$1;->aaO:Lorg/spongycastle/asn1/BEROctetString;

    invoke-static {v1}, Lorg/spongycastle/asn1/BEROctetString;->ˊ(Lorg/spongycastle/asn1/BEROctetString;)[Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    .line 87
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetString$1;->aaO:Lorg/spongycastle/asn1/BEROctetString;

    invoke-static {v0}, Lorg/spongycastle/asn1/BEROctetString;->ˊ(Lorg/spongycastle/asn1/BEROctetString;)[Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/asn1/BEROctetString$1;->aaN:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/asn1/BEROctetString$1;->aaN:I

    aget-object v0, v0, v1

    return-object v0
.end method
