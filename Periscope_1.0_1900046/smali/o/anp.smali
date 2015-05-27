.class public Lo/anp;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final bNS:I
    .annotation runtime Lo/go;
        value = "kind"
    .end annotation
.end field

.field public final bNT:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "payload"
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lo/anp;->bNS:I

    .line 23
    iput-object p2, p0, Lo/anp;->bNT:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static ˊ(Lo/anl;)Lo/anp;
    .locals 3

    .line 31
    new-instance v0, Lo/anp;

    new-instance v1, Lo/fl;

    invoke-direct {v1}, Lo/fl;-><init>()V

    invoke-virtual {v1, p0}, Lo/fl;->ᴸ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lo/anp;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static ˊ(Lo/anm;)Lo/anp;
    .locals 3

    .line 27
    new-instance v0, Lo/anp;

    new-instance v1, Lo/fl;

    invoke-direct {v1}, Lo/fl;-><init>()V

    invoke-virtual {v1, p0}, Lo/fl;->ᴸ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lo/anp;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static ˊ(Lo/ann;)Lo/anp;
    .locals 3

    .line 35
    new-instance v0, Lo/anp;

    new-instance v1, Lo/fl;

    invoke-direct {v1}, Lo/fl;-><init>()V

    invoke-virtual {v1, p0}, Lo/fl;->ᴸ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lo/anp;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static ˊ(Lo/ano;)Lo/anp;
    .locals 3

    .line 39
    new-instance v0, Lo/anp;

    new-instance v1, Lo/fl;

    invoke-direct {v1}, Lo/fl;-><init>()V

    invoke-virtual {v1, p0}, Lo/fl;->ᴸ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lo/anp;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
