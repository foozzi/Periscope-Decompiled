.class Lo/ajc;
.super Lo/ajo;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bGZ:Lo/ajb;


# direct methods
.method constructor <init>(Lo/ajb;Lo/zo;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/ajc;->bGZ:Lo/ajb;

    invoke-direct {p0, p2}, Lo/ajo;-><init>(Lo/zo;)V

    return-void
.end method


# virtual methods
.method protected ˎ(Ltv/periscope/android/api/PsUser;)Z
    .locals 2

    .line 28
    iget-object v0, p0, Lo/ajc;->bGZ:Lo/ajb;

    invoke-static {v0}, Lo/ajb;->ˊ(Lo/ajb;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
