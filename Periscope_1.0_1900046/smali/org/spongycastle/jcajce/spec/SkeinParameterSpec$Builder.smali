.class public Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aZH:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;->aZH:Ljava/util/Map;

    .line 157
    return-void
.end method
