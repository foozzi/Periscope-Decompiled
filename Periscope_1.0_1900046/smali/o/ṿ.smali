.class public Lo/ṿ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ḹ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:Ljava/lang/Object;>Ljava/lang/Object;Lo/\u1e39<TR;>;"
    }
.end annotation


# instance fields
.field private final mJ:Lo/ṝ$if;

.field private mK:Lo/ḟ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u1e1f<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/ṝ$if;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lo/ṿ;->mJ:Lo/ṝ$if;

    .line 27
    return-void
.end method


# virtual methods
.method public ᐝ(ZZ)Lo/ḟ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)Lo/\u1e1f<TR;>;"
        }
    .end annotation

    .line 40
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    .line 41
    :cond_0
    invoke-static {}, Lo/ḽ;->ḹ()Lo/ḟ;

    move-result-object v0

    return-object v0

    .line 44
    :cond_1
    iget-object v0, p0, Lo/ṿ;->mK:Lo/ḟ;

    if-nez v0, :cond_2

    .line 45
    new-instance v0, Lo/ṝ;

    iget-object v1, p0, Lo/ṿ;->mJ:Lo/ṝ$if;

    invoke-direct {v0, v1}, Lo/ṝ;-><init>(Lo/ṝ$if;)V

    iput-object v0, p0, Lo/ṿ;->mK:Lo/ḟ;

    .line 48
    :cond_2
    iget-object v0, p0, Lo/ṿ;->mK:Lo/ḟ;

    return-object v0
.end method
