.class abstract Lorg/spongycastle/asn1/LimitedInputStream;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field protected final aaA:Ljava/io/InputStream;

.field private aaB:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/spongycastle/asn1/LimitedInputStream;->aaA:Ljava/io/InputStream;

    .line 16
    iput p2, p0, Lorg/spongycastle/asn1/LimitedInputStream;->aaB:I

    .line 17
    return-void
.end method


# virtual methods
.method getRemaining()I
    .locals 1

    .line 22
    iget v0, p0, Lorg/spongycastle/asn1/LimitedInputStream;->aaB:I

    return v0
.end method

.method protected ᵄ(Z)V
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/spongycastle/asn1/LimitedInputStream;->aaA:Ljava/io/InputStream;

    instance-of v0, v0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lorg/spongycastle/asn1/LimitedInputStream;->aaA:Ljava/io/InputStream;

    check-cast v0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->ᘁ(Z)V

    .line 31
    :cond_0
    return-void
.end method
