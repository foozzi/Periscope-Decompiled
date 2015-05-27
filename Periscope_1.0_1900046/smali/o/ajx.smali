.class Lo/ajx;
.super Lo/akb;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bIe:Lo/ajw;


# direct methods
.method constructor <init>(Lo/ajw;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lo/ajx;->bIe:Lo/ajw;

    invoke-direct {p0}, Lo/akb;-><init>()V

    return-void
.end method


# virtual methods
.method protected ˎ(Ltv/periscope/android/api/PsUser;)Z
    .locals 2

    .line 90
    iget-object v0, p0, Lo/ajx;->bIe:Lo/ajw;

    invoke-static {v0}, Lo/ajw;->ˊ(Lo/ajw;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
