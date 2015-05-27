.class final Lo/ajr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/akd;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bHL:Lo/amw;


# direct methods
.method constructor <init>(Lo/amw;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lo/ajr;->bHL:Lo/amw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Landroid/view/View;Ltv/periscope/android/api/PsUser;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lo/ajr;->bHL:Lo/amw;

    iget-object v1, p2, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/amw;->ƚ(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public ˊ(ZLtv/periscope/android/api/PsUser;)V
    .locals 2

    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lo/ajr;->bHL:Lo/amw;

    iget-object v1, p2, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/amw;->ﭕ(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lo/ajr;->bHL:Lo/amw;

    iget-object v1, p2, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/amw;->ﭜ(Ljava/lang/String;)V

    .line 45
    :goto_0
    return-void
.end method
