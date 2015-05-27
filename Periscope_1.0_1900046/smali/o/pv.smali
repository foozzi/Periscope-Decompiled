.class public Lo/pv;
.super Lo/pu;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Lo/pu<TT;>;"
    }
.end annotation


# instance fields
.field private Kx:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/pv;-><init>(Lo/pw;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Lo/pw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/pw<TT;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lo/pu;-><init>(Lo/pw;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected ˊ(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;TT;)V"
        }
    .end annotation

    .line 29
    iput-object p2, p0, Lo/pv;->Kx:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method protected ˮ(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;)TT;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lo/pv;->Kx:Ljava/lang/Object;

    return-object v0
.end method
