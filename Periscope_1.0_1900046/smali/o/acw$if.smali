.class public Lo/acw$if;
.super Landroid/os/Binder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/acw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field final synthetic byd:Lo/acw;


# direct methods
.method public constructor <init>(Lo/acw;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lo/acw$if;->byd:Lo/acw;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public wQ()Lo/acw;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/acw$if;->byd:Lo/acw;

    return-object v0
.end method
