.class Lo/nj;
.super Lo/pg$ˊ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Rb:Lo/ni;


# direct methods
.method constructor <init>(Lo/ni;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lo/nj;->Rb:Lo/ni;

    invoke-direct {p0}, Lo/pg$ˊ;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lo/nj;->Rb:Lo/ni;

    invoke-virtual {v0}, Lo/ni;->bC()V

    .line 59
    return-void
.end method
