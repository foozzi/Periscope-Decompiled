.class final Lo/jm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/gl;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic KZ:Lo/jy;

.field final synthetic MW:Lo/gk;


# direct methods
.method constructor <init>(Lo/jy;Lo/gk;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lo/jm;->KZ:Lo/jy;

    iput-object p2, p0, Lo/jm;->MW:Lo/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/fl;Lo/jy;)Lo/gk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Lo/fl;Lo/jy<TT;>;)Lo/gk<TT;>;"
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lo/jm;->KZ:Lo/jy;

    invoke-virtual {p2, v0}, Lo/jy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/jm;->MW:Lo/gk;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
