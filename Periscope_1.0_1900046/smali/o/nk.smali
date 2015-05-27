.class Lo/nk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 79
    iput-object p1, p0, Lo/nk;->Rb:Lo/ni;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 82
    iget-object v0, p0, Lo/nk;->Rb:Lo/ni;

    invoke-virtual {v0}, Lo/ni;->bD()V

    .line 83
    return-void
.end method
