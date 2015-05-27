.class public Lo/od$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/od;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final Sa:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "AD_ID"
    .end annotation
.end field

.field final synthetic Sb:Lo/od;


# direct methods
.method public constructor <init>(Lo/od;Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lo/od$if;->Sb:Lo/od;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lo/od$if;->Sa:Ljava/lang/String;

    .line 65
    return-void
.end method
