.class Lcom/localytics/android/JavaScriptClient$1;
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
.field final synthetic this$0:Lcom/localytics/android/JavaScriptClient;


# direct methods
.method constructor <init>(Lcom/localytics/android/JavaScriptClient;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/localytics/android/JavaScriptClient$1;->this$0:Lcom/localytics/android/JavaScriptClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/localytics/android/JavaScriptClient$1;->this$0:Lcom/localytics/android/JavaScriptClient;

    const/4 v1, 0x4

    const/4 v2, 0x0

    # invokes: Lcom/localytics/android/JavaScriptClient;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/localytics/android/JavaScriptClient;->access$000(Lcom/localytics/android/JavaScriptClient;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method
