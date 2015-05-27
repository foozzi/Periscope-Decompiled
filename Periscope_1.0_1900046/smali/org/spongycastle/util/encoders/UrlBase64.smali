.class public Lorg/spongycastle/util/encoders/UrlBase64;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bkd:Lorg/spongycastle/util/encoders/Encoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lorg/spongycastle/util/encoders/UrlBase64Encoder;

    invoke-direct {v0}, Lorg/spongycastle/util/encoders/UrlBase64Encoder;-><init>()V

    sput-object v0, Lorg/spongycastle/util/encoders/UrlBase64;->bkd:Lorg/spongycastle/util/encoders/Encoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
