.class public abstract Lo/abe;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final bvo:Lo/ﮆ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lo/ﮞ;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ﮞ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/abe;->bvo:Lo/ﮆ;

    return-void
.end method
